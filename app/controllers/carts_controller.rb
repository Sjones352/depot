class CartsController < ApplicationController
  before_action :set_cart, only: [:show, :edit, :update, :destroy]


  def index
    @carts = Cart.all
  end

  def show
    begin
    @cart = Cart.find(params[:id]) 
    rescue ActiveRecord::RecordNotFound
      logger.error "Attempt to access invalid cart #{params[:id]}"
      redirect_to store_url, notice: 'Invalid cart'
    else
      respond_to do |format|
        format.html #show.html.erb
        format.json {render json: @cart}
      end
    end
  end

  def new
    @cart = Cart.new
  end

  def edit
  end


  def create
    @cart = Cart.new(params[:cart])

    respond_to do |format|
      if @cart.save
        format.html { redirect_to @cart, notice: 'Cart was successfully created.' }
        format.json { render :show, status: :created, location: @cart }
      else
        format.html { render :new }
        format.json { render json: @cart.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @cart.update(params[:cart])
        format.html { redirect_to @cart, notice: 'Cart was successfully updated.' }
        format.json { render :show, status: :ok, location: @cart }
      else
        format.html { render :edit }
        format.json { render json: @cart.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @cart = current_cart
    @cart.destroy
    session[:cart_id] = nil
    respond_to do |format|
      format.html { redirect_to store_url}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cart
      @cart = Cart.find(params[:id])
    end

    # def cart_params
    #   params.require(:post).permit(:title, :text)
    # end
end
