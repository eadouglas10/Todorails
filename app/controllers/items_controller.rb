class ItemsController < ApplicationController

  def create
    @item = Item.create(item_params)
    @list = @item.list
    redirect_to "/lists/#{@list.name}"
  end

  def update
    #code
  end

  def complete
    @item = Item.find(params["id"])
    @item.completed_on = Date.today
    @item.save
    redirect_to "/lists/#{@item.list.name}"
  end

  def random
    #code
  end

  def search
    #code
  end

  private def item_params
  params.require("item").permit(:name, :list_id, :due_on)
end

end
