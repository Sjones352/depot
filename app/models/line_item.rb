class LineItem < ActiveRecord::Base
	validates_numericality_of :product_id, presence: true

	belongs_to :product
	belongs_to :cart

	def total_price
     product.price * quantity
    end
end
