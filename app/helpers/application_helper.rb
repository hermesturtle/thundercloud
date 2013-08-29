module ApplicationHelper
  def price_in_dollars(price)
    "$#{price / 100}"
  end
end
