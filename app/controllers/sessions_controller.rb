class SessionsController < ApplicationController
 
  # POST api/v1/sign_in
  def create
    user = User.find_by_email(params[:email])
    if user.valid_password?(params[:password])
      render json: { user: user.attributes.slice("email", "authentication_token"), status: 200 }
    else
      render json: { error: "Email Or Password are incorrect", status: 400 }
    end
  end

  # DELETE api/v1/sign_out
  def destroy
    user = User.find_by_authentication_token(params[:token])
    if user
      user.update_column(:authentication_token, nil)
      render json: { message: "You successfully logout.", status: 200 }
    else
      render json: { error: "Invalid token", status: 400 }
    end
  end

end