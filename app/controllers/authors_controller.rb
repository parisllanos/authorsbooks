class AuthorsController < ApplicationController
  before_action :set_author,:only=>[:show,:edit,:update,:destroy]
  def index
  	@authors = Author.all
  end
  def show
  end
  def edit
  end
  def update
    if @author.update(author_params)
      redirect_to @author,:notice=>'Author editado con exito'
    else
      render  'edit'
    end
  end
  def new
    @author = Author.new
  end
  def create
    @author = Author.new(author_params)
    if @author.save
      redirect_to @author,:notice=> 'Author creado con exito'
    else
      render 'new'
    end
  end
  def destroy
    @author.destroy
    redirect_to authors_path,:notice=>'Author eliminado con exito'
  end
  private
  def set_author
  	@author = Author.find_by_id(params[:id])
  end
  def author_params
    params.require(:author).permit(:name,:check)
  end
end
