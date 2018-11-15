class UsersController < ApplicationController

def index
  render :index
end

def login
 @page_title = " User Login"
 @submit_text = "Login"
 render :partial => 'form'
 redirect_to @post
end

def new
  @user = User.new
  @page_title = " User Registration"
  @submit_text = "Register"
  render :partial => 'form'
end

def create
  @user = User.new(params.require(:user).permit(users_class_params))
  if @user.save
    log_in_user(@user)
    redirect_to @post
  else
    flash[:errors] = @user.errors.full_messages
   redirect_to new_user_path
  end
end

private

def users_class_params
   params.require(:user).permit(:username, :password, :date_of_birth, :employment_status, :location)
end

end
