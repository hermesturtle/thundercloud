module ApplicationHelper
  def price_in_dollars(price)
    number_to_currency(price / 100)
  end
end
