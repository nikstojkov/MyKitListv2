class ItemController < ApplicationController
  def index; end

  def table_data
    @items = Item.all
    render json: items
  end
end
