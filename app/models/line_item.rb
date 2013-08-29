class LineItem < ActiveRecord::Base
  belongs_to :cart
  belongs_to :product

  def self.construct_from_product(product, user)
    line_item = LineItem.new
    line_item.product_id = product.id
    line_item.cart_id = user.cart_id
    line_item.price = product.price
    line_item
  end
end
