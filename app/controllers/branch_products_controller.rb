class BranchProductsController < ApplicationController
  before_action :set_branch_product, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token
  
  # GET /branch_products
  # GET /branch_products.json
  def index
    @branch_products = BranchProduct.all
    # @geojson = Array.new
    
    # @branch_products.each do |branch_product|
    #   @geojson << {
    #     type: 'Feature',
    #     geometry: {
    #       type: 'Point',
    #       coordinates: [branch_product.longitude, branch_product.latitude]
    #     },
    #     properties: {
    #       name: branch_product.name,
    #       address: branch_product.name,
    #       :'marker-color' => '#FF0000',
    #       :'marker-symbol' => 'circle',
    #       :'marker-size' => 'medium'
    #     }
    #   }
    # end
    
    # respond_to do |format|
    #   format.html
    #   format.json { render json: @geojson }  # respond with the created JSON object
    # end
  end

  # GET /branch_products/1
  # GET /branch_products/1.json
  def show
  end

  # GET /branch_products/new
  def new
    @branch_product = BranchProduct.new
  end

  # GET /branch_products/1/edit
  def edit
  end

  # POST /branch_products
  # POST /branch_products.json
  def create
    @branch_product = BranchProduct.new(branch_product_params)

    respond_to do |format|
      if @branch_product.save
        format.html { redirect_to @branch_product, notice: 'Branch product was successfully created.' }
        format.json { render :show, status: :created, location: @branch_product }
      else
        format.html { render :new }
        format.json { render json: @branch_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /branch_products/1
  # PATCH/PUT /branch_products/1.json
  def update
    respond_to do |format|
      if @branch_product.update(branch_product_params)
        format.html { redirect_to @branch_product, notice: 'Branch product was successfully updated.' }
        format.json { render :show, status: :ok, location: @branch_product }
      else
        format.html { render :edit }
        format.json { render json: @branch_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /branch_products/1
  # DELETE /branch_products/1.json
  def destroy
    @branch_product.destroy
    respond_to do |format|
      format.html { redirect_to branch_products_url, notice: 'Branch product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_branch_product
      @branch_product = BranchProduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def branch_product_params
      params.require(:branch_product).permit(:branch_id, :product_id, :stock, :longitude, :latitude)
    end
end

