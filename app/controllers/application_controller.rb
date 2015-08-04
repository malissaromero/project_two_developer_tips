class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate

  helper_method :current_user

  def current_user
    return session[:user]
  end

  private
  def authenticate
    if !session[:is_signed_in]
    redirect_to "/signin"
    end
  end
end
