#orders are all done in cent values so we can use integers
class Cart < ActiveRecord::Base
  belongs_to :user
  has_many :line_items, dependent: :destroy

  def update_total
    total = 0
    line_items.each do |item|
      total += (item.price * item.quantity)
    end
    self.order_total = total
    save
  end
end
