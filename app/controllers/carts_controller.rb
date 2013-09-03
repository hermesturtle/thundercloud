class CartsController < ApplicationController
  load_and_authorize_resource

  def show
    @cart = Cart.find(params[:id])
  end

  def checkout
    cart = Cart.find(params[:id])
    if (order = Order.construct_from_cart(cart)).save
      order.populate_line_items(cart)
      redirect_to order_path(order)
    else
      redirect_to cart_path(cart)
    end
  end
end
