class ProductController < ApplicationController
	 before_action :set_product, only: [:show, :edit, :update, :destroy]
	  helper_method :sort_column, :sort_direction
    

 def index
    @product = Product.search(params[:search]).order(sort_column + " " + sort_direction)

  # @search = Product.search(params[:q])
  # @products = @search.result
  # @search.build_condition if @search.conditions.empty?
  # @search.build_sort if @search.sorts.empty?
	  @product = Product.all 
    # Product.includes( :item ).order( 'product.name DESC' )
    #   @products = Product.order(params[:sort])

#  @filterrific = initialize_filterrific(
#  Product,
#  params[:filterrific]
#  ) or return
#  @product_params = @filterrific.find.page(params[:page])

# respond_to do |format|
#  format.html
#  format.js
 # end
	   # @product = Product.search(params[:search])

	  
	# if params[:search]
 #      @product = Product.search(params[:search]).order("created_at DESC")
 #    else
 #      @product = Product.all.order('created_at DESC')
 #    end
  end
  
#   def sort_column
#   Product.column_names.include?(params[:sort]) ? params[:sort] : "name"
# end
  def home
     # @products = Product.order(params[:sort] + ' ' + params[:direction])
     # @product = Product.all.order("created_at DESC")
     # default_scope { order(created_at: :desc)}
  # @product = Product.all 
	# @product = Product.search(params[:search])
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
   # def search
   #        @product = Product.search(params[:search].split("=").last)
   #        respond_to :js
   #    end
   def method1

   end
  
  private
  def sortable_columns
    ["price"]
  end
  def find_product
    @product = Product.find(params[:id])
  end
  def sort_direction
    %w[asc desc].include?(params[:direction]) ?  params[:direction] : "asc"
  end

    def sort_column
      Product.column_names.include?(params[:sort]) ? params[:sort] : "name"
    end

    def product_params
      # params.require(:product).permit(:name, :Description, :price, :category_id)
      params.permit(:name, :Description, :price, :category_id)

    end
end