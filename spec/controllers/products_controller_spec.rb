require 'rails_helper'

RSpec.describe ProductsController do
    let (:products) {Product.all}

 describe 'GET #index' do
    it 'should be able to return json data' do
       get :index, {format: :json}
       expect(response).to be_success
    end
  end

  describe 'GET #index' do
   it 'should be able  to return html data' do
      get :index, {format: :html}
      expect(response).to be_success
   end
  end

  describe 'GET #show' do
    it 'should be able  to return product' do
      product = Product.create
      get :show, params: {id: product.to_param}
      expect(response).to be_success
     end
    end
end
