require 'rails_helper'

RSpec.describe Order do
  let(:order) {Order.new}

  it "is not valid without a name" do
    expect(order).not_to be_valid
  end
end