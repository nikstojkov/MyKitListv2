class TestOrdersController < ApplicationController
  def index

  end

  def table_data
    orders = TestOrder.all
    render json: orders
  end

end
