class ListsController < ApplicationController

  def index
    @lists = List.all
    @list = List.new
    @item = Item.new
  end

  def create
    @list = List.create(name: params["list"]["name"])
    redirect_to "/lists"
  end

  def show
    @list = List.find_by(name: params["name"])
    @items = Item.where(list_id: @list.id, completed_on: nil)
    @item = Item.new
  end

end
