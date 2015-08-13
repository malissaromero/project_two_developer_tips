class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate
  #come back later
  # before_action :authenticate, only: [:index]

  helper_method :current_user

  def current_user
    return User.find(session[:user_id])
  end

  private
  def authenticate
    # mms: indentation
    # mms: You should be able to just use `session[:user_id]` here, no need for an extra session entry.
    # mms:    I expect you'll find that these are both set at the same time.
    # mss:    Though, I do respect the the clarity of this key.
    if !session[:is_signed_in]
      redirect_to "/signin"
    end
  end
end
