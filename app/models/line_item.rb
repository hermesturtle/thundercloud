class LineItem < ActiveRecord::Base
  belongs_to :itemable, polymorphic: true
  belongs_to :product

  after_create :update_order_total
  after_update :update_order_total
  after_destroy :update_order_total

  def update_order_total
    itemable.update_total if itemable_type == "Cart"
  end

  def self.construct_from_product(product, user)
    if (line_item = user.cart.line_items.select { |item| item.product == product }.first)
      line_item.quantity += 1
    else
      line_item = LineItem.new
      line_item.product_id = product.id
      line_item.itemable_id = user.cart_id
      line_item.itemable_type = "Cart"
      line_item.price = product.price
      line_item.quantity = 1
    end
    line_item
  end
end
