class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :ensure_authorized

  def ensure_authorized
    if session[:current_user]
      return
    end
    redirect_to new_login_path
  end
  def current_user
    User.find(session[:current_user])
  end
  helper_method :current_user
end
