class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
    # @books = @user.books
    @book = Book.new
    
  end
  
  def index
    @users = User.all
  end
end
