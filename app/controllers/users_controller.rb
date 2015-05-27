class UsersController < ApplicationController

  def show
    @user = current_user
  end

  def sign_in
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_to user_path user
    else
      flash[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end
end

