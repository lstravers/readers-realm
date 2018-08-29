class UsersController < ApplicationController

  def create
    @book = Book.find(params[:book_id])
    @user = 
  @book.users.create(user_params)
    redirect_to book_path(@book)
  end
 
  private
    def user_params
      params.require(:user).permit(:user, :body)
    end
end

end
