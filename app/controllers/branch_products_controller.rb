class BranchProductsController < ApplicationController
  before_action :set_branch_product, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token
  
  # GET /branch_products
  # GET /branch_products.json
  def index
    @branch_products = BranchProduct.all
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
        if Product.find(branch_product_params[:product_id]).category == "Dairy"
          @branch_product.longitude = 10
          @branch_product.latitude = rand(0...275)
        end
        
        if Product.find(branch_product_params[:product_id]).category == "Eggs"
          @branch_product.longitude = 10
          @branch_product.latitude = rand(325...360)
        end
        
        if Product.find(branch_product_params[:product_id]).category == "Newspaper"
          @branch_product.longitude = 10
          @branch_product.latitude = rand(380...455)
        end
        
        if Product.find(branch_product_params[:product_id]).category == "Magazines"
          @branch_product.longitude = 10
          @branch_product.latitude = rand(455...510)
        end
        
        if Product.find(branch_product_params[:product_id]).category == "Fruits"
          @branch_product.longitude = rand(65...210)
          @branch_product.latitude = 10
        end
        
        if Product.find(branch_product_params[:product_id]).category == "Vegetables"
          @branch_product.longitude = rand(210...365)
          @branch_product.latitude = 10
        end
        
        if Product.find(branch_product_params[:product_id]).category == "Tea/Coffee"
          @branch_product.longitude = 370
          @branch_product.latitude = rand(0...155)
        end
        
        if Product.find(branch_product_params[:product_id]).category == "Bakery"
          @branch_product.longitude = 370
          @branch_product.latitude = rand(155...335)
        end
        
        if Product.find(branch_product_params[:product_id]).category == "Cereal"
          @branch_product.longitude = 370
          @branch_product.latitude = rand(335...525)
        end
        
        if Product.find(branch_product_params[:product_id]).category == "Frozens"
          @branch_product.longitude = rand(70...90)
          @branch_product.latitude = rand(80...285)
        end
        
        if Product.find(branch_product_params[:product_id]).category == "Baby food"
          @branch_product.longitude = rand(130...155)
          @branch_product.latitude = rand(55...325)
        end
        
        if Product.find(branch_product_params[:product_id]).category == "Canned food"
          @branch_product.longitude = rand(185...210)
          @branch_product.latitude = rand(55...325)
        end
        
        if Product.find(branch_product_params[:product_id]).category == "Snacks"
          @branch_product.longitude = rand(240...270)
          @branch_product.latitude = rand(55...325)
        end
        
        if Product.find(branch_product_params[:product_id]).category == "Meat"
          @branch_product.longitude = rand(305...335)
          @branch_product.latitude = rand(85...150)
        end
        
        if Product.find(branch_product_params[:product_id]).category == "Chicken"
          @branch_product.longitude = rand(305...335)
          @branch_product.latitude = rand(215...275)
        end
        
        if Product.find(branch_product_params[:product_id]).category == "Biscuits"
          @branch_product.longitude = rand(80...170)
          @branch_product.latitude = rand(360...400)
        end
        
        if Product.find(branch_product_params[:product_id]).category == "Pet food"
          @branch_product.longitude = rand(210...300)
          @branch_product.latitude = rand(360...400)
        end
        
        if @branch_product.save
          format.html { redirect_to @branch_product, notice: 'Branch product was successfully created.' }
          format.json { render :show, status: :created, location: @branch_product }
        else
          format.html { render :new }
          format.json { render json: @branch_product.errors, status: :unprocessable_entity }
        end
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
      params.require(:branch_product).permit(:branch_id, :product_id, :stock)
    end

    def branch_product_coordinates
      params.require(:branch_product).permit(:longitude, :latitude)
    end    
    
end

