class UsersController < ApplicationController

  def index
    render :index
  end

 def login
   # @user = User.new
   render :login
 end

  def new
  @user = User.new
 end

def create
  @user = User.create(users_class_params)
  @user.save
  redirect_to user_path(@user)
end

def show
  @user = User.find(params[:id])
end

def edit
  @user = User.find(params[:id])
end

# def update
#   @user = User.find(params[:id])
#   @user.update(users_class_params)
#   redirect_to user_path(@user)
# end

private

def users_class_params
   params.require(:user).permit(:username, :password, :date_of_birth, :employment_status, :location)
end

end
