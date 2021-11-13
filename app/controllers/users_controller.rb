class UsersController < ApplicationController
  def sign_up
    @user = User.new
  end

  def create
    user = User.new(sign_up_params)
    
  end

  private

  def sign_up_params
    params.require(:user).permit(:first_name)
  end
end
