class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def show
    @list = List.find(params[:id])
    @movies = @list.movies
  end

  def create
    @list = List.new(list_params)
    @list.save
    redirect_to lists_path(@list)
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
