class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    products = Product.all

    respond_to do |format|
      format.html { render :index, locals: { product: products } }
      format.json
    end
  end

  def show
    product = Product.find(params[:id])

    respond_to do |format|
      format.html { render :show, locals: { product: product } }
      format.json { render :show}
    end
  end

  def new
    @product = Product.new
  end

  def who_bought
    @product = Product.find(params[:id])
    respond_to do |format|
      format.atom
    end
  end

  def edit
  end

  def create
    product = Product.new(product_params)

    respond_to do |format|
      if product.save
        format.html { redirect_to product, notice: 'Product was successfully created.' }
        format.json { render :show, locals: { product: product }, status: :created, location: product }
      else
        format.html { render :new }
        format.json { render json: product.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_product
      @product = Product.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:title, :description, :image_url, :price)
    end
end
