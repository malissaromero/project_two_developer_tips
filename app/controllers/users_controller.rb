class UsersController < ApplicationController
  skip_before_action :authenticate

  def signup
  end

  def signup!
    user = User.new(
      username: params[:username],
      password_digest: BCrypt::Password.create(params[:password])
    )
    if params[:password_confirmation] != params[:password]
      message = "Your passwords don't match."
    elsif user.save
      message = "Your account has been created. Now please sign in."
    else
      message = "Your account couldn't be created. Did you enter a unique username and password?"
    end
    flash[:notice] = message
    redirect_to action: :signin
  end

  def signin
  end

  def signin!
    @user = User.find_by(username: params[:username])
    if !@user
      message = "This user doesn't exist. Please sign up."
      redirect_to action: :signup
    elsif !BCrypt::Password.new(@user.password_digest).is_password?(params[:password])
      message = "Your password's wrong."
      redirect_to action: :signin
    else
      message = "You're signed in, #{@user.username}!"
      session[:is_signed_in] = true
      session[:user] = User.find_by(username:params[:username])
      cookies[:username] = {
      value: @user.username,
      expires: 1.year.from_now
    }
    end
    flash[:notice] = message
    redirect_to action: :signin
  end

  def signin_prompt
  end

  def signout
    flash[:notice] = "You're signed out."
    reset_session
    redirect_to root_url
  end
end
