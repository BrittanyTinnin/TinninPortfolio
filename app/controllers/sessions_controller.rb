class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:notice] = "Logged In!"
      redirect_to root_url
    else
      flash[:notice] = "Email or Password Incorrect!"
      render :new
    end
  end

  def destroy
    session.clear
    flash[:notice] = "You have successfully logged out."
    redirect_to login_path
  end
end
