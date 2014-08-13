class AuthorsController < ApplicationController
  after_action :set_author,:only=>[:show,:edit,:update,:destroy]
  def index
  	@authors = Author.all
  end
  def show
  end
  def edit
  end
  def update
  end
  def new
  end
  def create
  end
  def destroy
  end
  private
  def set_author
  	@author = Author.find_by_id(params[:id])
  end
end
