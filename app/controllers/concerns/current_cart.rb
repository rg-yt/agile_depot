Module CurrentCart

private

def set_cart
  @cart = Cart.find(session[:cart_id])
rescue ActiveRecord::RecordNotFound
  @cart = Cart.create
  session[:id_cart] = @card.id
end
