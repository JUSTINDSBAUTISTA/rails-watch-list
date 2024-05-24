class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  def create
    @list = List.create(list_param)
    @list.save

    redirect_to list_path(@list)
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    @list = List.find(params[:id])
    @list.update(list_param)

    redirect_to list_path(@list)
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy

    redirect_to lists_path, status: :see_other
  end

  private

  def list_param
    params.require(:list).permit(:name)
  end
end
