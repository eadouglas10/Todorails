class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def create
    @list = List.new
    List.create(params["list"])
  end

  def show
    #code
  end

end
