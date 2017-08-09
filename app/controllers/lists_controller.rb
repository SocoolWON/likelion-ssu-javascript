class ListsController < ApplicationController
  def index
    @lists = List.all
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
    else
    end
  end

  def destroy
    @list = List.find(params[:id])
    if @list.delete
    else
    end
  end
  private
    def list_params
      params.require(:list).permit(:content)
    end
end
