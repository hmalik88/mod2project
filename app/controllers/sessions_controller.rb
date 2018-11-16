class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      user_login(@user)
      redirect_to posts_path
    else
      flash[:errors] = ["Username or Password don't match."]
      redirect_to new_session_path
    end
  end

  def destroy
    sign_out
    redirect_to posts_path
  end     

end
