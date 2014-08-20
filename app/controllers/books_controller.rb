class BooksController < ApplicationController
  before_action :set_book, only:[:show,:edit,:update,:destroy]

  def index
    @books = Book.all
  end

  def show
  end

  def edit
  end

  def update
    if @book.update(book_params)
      redirect_to @book,:notice=>'el libro fue editado con exito'
    else
      render 'edit'
    end
  end

  def new
    @book = Book.new()
  end

  def create
    @book = Book.new(book_params)
    authors = Author.where(id: get_authors_ids)
    @book.authors = authors
    if @book.save
      redirect_to @book,:notice=>'El libro fue creado con exito'
    else
      render 'new'
    end
  end

  def destroy
    @book.destroy
    redirect_to books_path,:notice=>'El libro fue eliminado'
  end

  private

  def get_authors_ids
    params.require(:book).require(:authors).permit(author_id: [])[:author_id]
  end

  def set_book
    @book = Book.find_by_id(params[:id])
  end

  def book_params
    params.require(:book).permit(:title,:year,:authors)
  end
end
