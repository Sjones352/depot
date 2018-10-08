class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  # before_action :current_cart
  before_action :show_cookies

  private

  def show_cookies

    puts "Showing cookies: begin"
    cookies.each do |cookie|
      puts cookie
    end
    puts "Showing cookies: end"

    session.keys.sort.each do |key|
      puts "session[#{key}]: #{session[key]}"
    end
  end

   def current_cart
   	 Cart.find(session[:cart_id])
   rescue ActiveRecord::RecordNotFound
   	 cart = Cart.create
   	 session[:cart_id] = cart.id
   	 cart
   end
end
