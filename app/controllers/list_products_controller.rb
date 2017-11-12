class ListProductsController < ApplicationController
  before_action :set_list_product, only: [:show, :edit, :update, :destroy]

  # GET /list_products
  # GET /list_products.json
  def index
    @list_products = ListProduct.all
  end

  # GET /list_products/1
  # GET /list_products/1.json
  def show
  end

  # GET /list_products/new
  def new
    @list_product = ListProduct.new
    # UserMailer.send_list(@list_product).deliver
  end

  # GET /list_products/1/edit
  def edit
  end

  # POST /list_products
  # POST /list_products.json
  def create
    @list_product = ListProduct.new(list_product_params)

    respond_to do |format|
      if @list_product.save
        format.html { redirect_to @list_product, notice: 'List product was successfully created.' }
        format.json { render :show, status: :created, location: @list_product }
        UserMailer.send_list(@list_product).deliver
      else
        format.html { render :new }
        format.json { render json: @list_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /list_products/1
  # PATCH/PUT /list_products/1.json
  def update
    respond_to do |format|
      if @list_product.update(list_product_params)
        format.html { redirect_to @list_product, notice: 'List product was successfully updated.' }
        format.json { render :show, status: :ok, location: @list_product }
      else
        format.html { render :edit }
        format.json { render json: @list_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /list_products/1
  # DELETE /list_products/1.json
  def destroy
    @list_product.destroy
    respond_to do |format|
      format.html { redirect_to list_products_url, notice: 'List product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_list_product
      @list_product = ListProduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def list_product_params
      params.require(:list_product).permit(:list_id, :product_id, :quantity, :availability)
    end
end
