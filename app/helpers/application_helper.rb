module ApplicationHelper
  def price_in_dollars(price)
    number_to_currency(price / 100)
  end

  def is_shop_page?(params)
    params[:controller] == "products" || params[:controller] == "carts"
  end

  def is_artist_page?(params)
    params[:controller] == "artists"
  end

  def is_about_page?(params)
    params[:controller] == "static_pages" && params[:action] == "about"
  end
end
