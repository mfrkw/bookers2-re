class BooksController < ApplicationController
  def index
    @book = Book.new
    @books =Book.all
  end
  def show
    @book= Book.find(params:[id])
    @user= @book.user
  end
  
  def create
    book = Book.new(book_params)
    book.save
    redirect_to book_path
  end
  
  def edit
  end
  def update
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end