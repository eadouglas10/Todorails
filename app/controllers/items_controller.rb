class ItemsController < ApplicationController

  def create
    @item = Item.create(item_params)
    @list = @item.list
    redirect_to "/lists/#{@list.name}"
  end

  def edit
    @item = Item.find(params["id"])
  end

  def update
    @item = Item.find(params["id"])
    @item.update(item_params)
    redirect_to "/lists/#{@item.list.name}"
  end

  def complete
    @item = Item.find(params["id"])
    @item.completed_on = Date.today
    @item.save
    redirect_to "/lists/#{@item.list.name}"
  end

  def random
    @items = Item.where(completed_on: nil)
    @item = @items.sample
  end

  def search
    @item = Item.new
    @item = Item.find_by(name: params["item"]["name"])
  end

  private def item_params
  params.require("item").permit(:name, :list_id, :due_on)
end

end
