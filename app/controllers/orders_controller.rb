class OrdersController < ApplicationController
  load_and_authorize_resource

  def show
    @order = Order.find(params[:id])
  end
end
