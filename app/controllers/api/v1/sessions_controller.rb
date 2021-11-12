module Api
  module V1
    class SessionsController < ApplicationController
      # POST api/v1/sign_in
      def create
        user = User.find_by_email(params[:email])
        if user&.valid_password?(params[:password])
          # Regenerate authentication token
          user.ensure_authentication_token
          user.save

          render json: { user: ActiveModelSerializers::SerializableResource.new(user, serializer: UserSerializer) }
        else
          render json: { error: 'Email Or Password are incorrect' }
        end
      end

      # DELETE api/v1/sign_out
      def destroy
        user = User.find_by_authentication_token(params[:token])
        if user
          user.update_column(:authentication_token, nil)
          render json: { message: 'You successfully logout.' }
        else
          render json: { error: 'Invalid token' }
        end
      end
    end
  end
end
