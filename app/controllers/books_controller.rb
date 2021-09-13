class BooksController < ApplicationController
  def index
    @book = Book.new
    @books =Book.all
  end
  def show
    @book= Book.find(params[:id])
    @user= @book_user

  end

  def create
    book = Book.new(book_params)
    book.save
    if redirect_to book_path(book)
    else
      @books = Book.all
      render index
    end
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
