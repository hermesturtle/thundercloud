class Order < ActiveRecord::Base
  belongs_to :user
  has_many :line_items, as: :itemable

  def self.construct_from_cart(cart)
    new_order = Order.new
    new_order.total = cart.order_total
    new_order.user_id = cart.user_id

    new_order
  end

  def populate_line_items(cart)
    cart.line_items.each do |item|
      item.itemable_type = self.class.name
      item.itemable_id = id
      item.save
    end
    cart.reload.update_total
  end
end
