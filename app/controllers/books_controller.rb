class BooksController < ApplicationController

  def edit
  end

  def index
    @book = Book.new
    @books = Book.all
  end

  def show
  end

  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to books_path
  end

  def destroy
  end

  def update
  end
  
  private

  def book_params
    params.require(:body).permit(:title, :body)
  end
end
