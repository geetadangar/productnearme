class ProductController < ApplicationController
	 before_action :set_product, only: [:show, :edit, :update, :destroy]
	  # helper_method :sort_column, :sort_directio

 def index
	  @product = Product.all 
	  @product = Product.search(params[:search])

	  
	# if params[:search]
 #      @product = Product.search(params[:search]).order("created_at DESC")
 #    else
 #      @product = Product.all.order('created_at DESC')
 #    end
 #  end
  end
  def home
  @product = Product.all 
	@product = Product.search(params[:search])
  @category = Category.all
  end

  def new
    @product = Product.new
    @category = Category.all
  end

  def create
    @product= Product.new(product_params)
    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

	def show
   @product = Product.find_by_id(params[:id])
	end

  def edit
  	# @product = Product.new
  	 @category = Category.all
  end

  def update
    respond_to do |format|
    	@category = Category.all
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

 
  def destroy
    @product.destroy
    redirect_to root_url, notice: 'product delete successfully'
  end
   def search
          @product = Product.search(params[:search].split("=").last)
          respond_to :js
      end

  
  private

    def set_product
      @product = Product.find(params[:id])
    end

    def product_params
      # params.require(:product).permit(:name, :Description, :price, :category_id)
      params.permit(:name, :Description, :price, :category_id)

    end
end