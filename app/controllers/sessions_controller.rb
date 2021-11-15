class SessionsController < ApplicationController
  def login_page
  end

  def authenticate
    user = User.find_by(email: params[:email])

    if user.present? && user.authenticate(params[:password])
      puts 'success'
      session[:user_id] = user.id
      redirect_to root_path, notice: 'success' 
    end
    
  end

end