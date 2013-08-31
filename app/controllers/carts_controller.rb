class CartsController < ApplicationController
  load_and_authorize_resource

  def show
    @cart = Cart.find(params[:id])
  end
end
