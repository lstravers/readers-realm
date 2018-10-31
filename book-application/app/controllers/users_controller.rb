class UsersController < ApplicationController

  def index
  @user = User.all
  end
  
  def new
    @user = User.new
  end

  def create
  @user = User.new(user_params)
  if @user.save
    redirect_to new_session_path, notice: "You sucessfully created a new reader."
  else
    render 'Denied'
  end
end
 
  private
    def user_params
      params.require(:user, :password).permit(:user, :password)
    end
end
