class ItemController < ApplicationController

  def index
    @orders = TestOrder.all
  end
end
