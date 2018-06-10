class LineItem < ActiveRecord::Base
	# validates :product_id, :cart_id, presence: true
	
	belongs_to :product
	belongs_to :cart
	belongs_to :order, :optional => true


  def total_price
    product.price * quantity
  end
end
