class RegistrationsController < ApplicationController

  # POST api/v1/sign_up
  def create
    user = User.new(sign_up_params)
    user.password = params[:password]

    if user.save
      render json: { user: user.attributes.slice("email", "authentication_token"), message: "You sign up successfully", status: 200 }
    else
      render json: { error: user.errors.full_messages.first, status: 400 }
    end
  end
  private

  def sign_up_params
    params.permit(:first_name, :last_name, :email)
  end
end
