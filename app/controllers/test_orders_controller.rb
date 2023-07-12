class TestOrdersController < ApplicationController
  def index

  end

  def table_data
    data = TestOrder.limit(params[:size]).offset((params[:size].to_i) * (params[:page].to_i - 1))
    if params[:page].present?
      render json: { data: data, last_page: TestOrder.all.count / params[:size].to_i }
    else
      render json: data
    end
  end
end
