class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def show
    @list = List.find(params[:id])
  end



  def create
    @list = List.new(list_param)
    if @list.save
      redirect_to @list
    else
      render :new, status:
      :unprocessable_entity
    end
  end
  private

  def list_param
    params.require(:list).permit(:name)
  end
end
