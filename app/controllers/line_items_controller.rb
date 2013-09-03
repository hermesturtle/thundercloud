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
    if line_item.itemable_type == "Cart"
      cart = line_item.itemable
      line_item.destroy
      redirect_to cart_path(cart)
    else
      redirect_to root_path, notice: "You cannot delete line items from an order."
    end
  end
end
