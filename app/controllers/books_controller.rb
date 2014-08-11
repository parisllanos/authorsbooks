class BooksController < ApplicationController
  before_action :set_book, only:[:show,:edit,:update]
  def index
	@books = Book.all
  end
  def show

  end
  def edit
  end
  def update
  	if @book.update(book_params) 
  		redirect_to @book
  	else
  		render 'edit'
  	end
  end
  def new
  end
  private
  def set_book
  	@book = Book.find_by_id(params[:id])
  end
  def book_params
  	params.require(:book).permit(:title,:year)
  end
end
