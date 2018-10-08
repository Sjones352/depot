require 'rails_helper'

RSpec.describe OrdersController do
  describe 'GET #index' do
    it 'returns requested orders' do
      get :index
      expect(response).to be_success
    end
  end
end
