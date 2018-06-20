class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  # before_action :current_cart

  private

   def current_cart
   	 Cart.find(session[:cart_id])
   rescue ActiveRecord::RecordNotFound
   	 cart = Cart.create
   	 session[:cart_id] = cart.id
   	 cart
   end
end
