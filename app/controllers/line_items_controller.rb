class LineItemsController < ApplicationController
  load_and_authorize_resource

  def create
    product = Product.find(params[:product_id])
    if LineItem.construct_from_product(product, current_user).save
      redirect_to cart_path(current_user.cart)
    else
      redirect_to products_path, notice: "Something went wrong."
    end
  end

  def destroy
    line_item = LineItem.find(params[:id])
    cart = line_item.cart
    line_item.destroy
    redirect_to cart_path(cart)
  end
end
