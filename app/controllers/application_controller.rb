class ApplicationController < ActionController::Base
  helper_method :current_user, :authorize

  private

  def current_user
    if session[:user_id]
      @current_user || User.find_by(id: session[:user_id])
    end
  end

  def authorize
    redirect_to login_url if !current_user
  end
end
