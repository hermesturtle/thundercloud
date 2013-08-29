class LineItemsController < ApplicationController
  def create
    product = Product.find(params[:product_id])
    if LineItem.construct_from_product(product, current_user).save
      redirect_to cart_path(current_user.cart)
    else
      redirect_to products_path, notice: "Something went wrong."
    end
  end
end
