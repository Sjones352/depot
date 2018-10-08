require 'rails_helper'

RSpec.describe LineItemsController do
 describe 'GET #index' do
    it 'returns requested Line Iterms' do
      get :index
    end
  end
end
