class SessionsController < ApplicationController

  def new
  end

  def image
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      log_in_user(@user)
      redirect_to images_path
    else
      flash[:errors] = [ "Username or password didn't match" ]
      redirect_to new_sessions_path
    end
  end

  def destroy
    log_out
    redirect_to images_path
  end
end
