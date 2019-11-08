class ProductsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_product, only: [:show, :edit, :update, :destroy]



  # GET /products
  # GET /products.json
  def index
    @products = Product.all
    @user = User.all
  end

  # GET /products/1
  # GET /products/1.json
  def show
     @product = Product.find params[:id]
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
     @product = Product.new(product_params)
     if @product.save
       flash[:alert] = "Your book has been saved"
       redirect_to root_path
     else
       flash[:alert] = @product.errors.full_messages.join('<br>')
       redirect_to new_product_path
     end
   end

  def self.create_product(name, description, price)
    product= Product.find_product(title, description, price)
    if (!product)
      product = Product.new(title: name, description: description, price: price)
      product.save
    else
    return product
  end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
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

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :description, :price)
    end
end
