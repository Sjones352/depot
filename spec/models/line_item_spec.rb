require 'rails_helper'

# RSpec.describe LineItem, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

RSpec.describe LineItem do
  let(:order) {Order.new}

  it "is not valid without a a total price" do
    expect(order).not_to be_valid
  end
end