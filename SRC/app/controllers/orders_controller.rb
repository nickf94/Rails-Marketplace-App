require "stripe"

class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
  end

  # GET /orders/new
  # Def new links a button in the view folder toredirect to stripe so user can pay for product
  def new
    @product = Product.find(params[:product_id])
    Stripe.api_key = "sk_test_x0726HmAcAWTa1au6c4UO9qH00jk1E452W"

    @session = Stripe::Checkout::Session.create(
        payment_method_types: ["card"],
        line_items: [{
          name: @product.name,
          description: "By #{@product.description}",
          # images: [],
          amount: (@product.price * 100).to_i,
          currency: "aud",
          quantity: 1,
        }],
        success_url: "http://localhost:3000/orders/complete",
        cancel_url: "http://localhost:3000/orders/cancel")
      end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(order_params)

    respond_to do |format|
      if @order.save
        format.html { redirect_to @order, notice: 'Order was successfully created.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def complete
  end

  def cancel
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:first_name, :last_name, :sub_total)
    end
end
