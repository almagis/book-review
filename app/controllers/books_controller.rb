class BooksController < ApplicationController
  def index
  end
  
  def new
    @book = Book.new
  end
  
  def created
    @book = Book.new(book_params)
  end
  
  private
    def pook_params
      params.require(:book).permit(:title, :description, :author)
    end
end
