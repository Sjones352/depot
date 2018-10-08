require 'rails_helper'

RSpec.describe Product do
  let (:product) {Product.new}
  
  it "is not valid without a title" do
    expect(product).not_to be_valid
  end
end
