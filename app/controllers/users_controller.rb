class UsersController < ApplicationController
  def sign_up
    @user = User.new
  end

  def create
    user = User.new(sign_up_params)
    user.save
    redirect_to root_path
    
  end

  private

  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end
