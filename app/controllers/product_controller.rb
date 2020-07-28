class ProductController < ApplicationController
	 before_action :set_product, only: [:show, :edit, :update, :destroy]
	  helper_method :sort_column, :sort_direction
     # before_action : user_permission, only: [:edit]
     # before_action : user_permission, only: [:edit] 


    def user_permission 
      #one
    #   unless current_user
    #     @listing = Listing.find(params[:id])
    # else
    #     @listing = current_user.listings.find(params[:id])
    # end
    #two
    @product = current_user.name.find(params[:id])
    #three
    #   if ( current_user )
    #   @user = User.find(params[:id])
    #   if ( current_user?(@user) )
    #     @title = "Edit user"
    #   else
    #     redirect_to(root_path)
    #   end
    # else
    #   session[:return_to] = request.fullpath
    #   redirect_to("/signin" , :notice => "Please sign in to access this page.")
    # end
    #four
     if 
      current user  = Product.find(params[:id])
      else
        redirect_to(root_path)
      end

    end
    

 def index
    @currentUser = current_user.id

   # @category = Category.all
    @products = current_user.products
    # @product = current_user.products.new #Show
    # @product = current_user.products
   # @product = Product.order(sort_column + " " + sort_direction)
     @product = Product.all
    # if params[:search]
  #   @product = Product.search(params[:search]).order("created_at DESC")
  # else
  #   @product = Product.all.order('created_at DESC')
  # end

  # @user = current_user
  # @product = current_user.product
  # @search = Product.search(params[:q])
  # @products = @search.result
  # @search.build_condition if @search.conditions.empty?
  # @search.build_sort if @search.sorts.empty?
    # @product = Product.all 
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
    @product = current_user.products
    @product = Product.order(sort_column + " " + sort_direction)
	   #@product = Product.search(params[:search])
    @category = Category.all
  end

  def new
    # raise current_user.inspect
    @product = current_user.products.new
    # @product = Product.new
    @category = Category.all
  end

  def create
    # @product.user = current_user
    @product = current_user.products.new(product_params)
    
    @category = Category.all
     # @product= Product.new(product_params)
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
   # @product = Product.find_by_id(params[:id])
	end

  def edit
     raise current_user.inspect
  #   @user.inspect
  # current_user.inspect
     @product = current_user.products.find(params[:id])
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
    def search
    if params[:search].blank?  
    redirect_to(product_index_path, notice: "Empty field!") and return  
  else  
    @parameter = params[:search].downcase 
    @results = Product.all.where("lower(name) LIKE :search", search: "%#{@parameter}%")
    @result = Product.all.where("lower(description) LIKE :search", search: "%#{@parameter}%")

    # @results = Product.all.where("lower(name) LIKE :search", search: @parameter)  
  end  
  end
   def method1

   end
  
  private
  def set_product
      @product = Product.find(params[:id])
    end
  def sortable_columns
    ["price"]
  end
  def find_product
    @product = Product.find(params[:id])
  end
  # def sort_direction
  #   %w[asc desc].include?(params[:direction]) ?  params[:direction] : "asc"
  # end

  #   def sort_column
  #     Product.column_names.include?(params[:sort]) ? params[:sort] : "name"
  #   end
    def sort_column
    Product.column_names.include?(params[:sort]) ? params[:sort] : "name"
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end

    def product_params
      # params.require(:product).permit(:name, :Description, :price, :category_id)
      params.permit(:name, :Description, :price, :category_id)

    end
end


