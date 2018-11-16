class ApplicationController < ActionController::Base

  # private

  # if logged_in?
  #   @user = User.find(logged_in_user_id)
  #   @posts = session["posts"]
  # end
  #
  # def user_login(user)
  #    session[:user_id] = user.id
  #  end
  #
  #  def sign_out
  #   session[:user_id] = nil
  # end
  #
  # def logged_in_user_id
  #   session[:user_id]
  # end
  # #
  # def logged_in?
  #   !!logged_in_user_id
  # end
  #
  # def authorized?(user_id)
  #   logged_in_user_id == user_id
  # end

end
