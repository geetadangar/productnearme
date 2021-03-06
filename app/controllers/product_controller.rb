class ProductController < ApplicationController
	 before_action :set_product, only: [:show, :edit, :update, :destroy]
	  helper_method :sort_column, :sort_direction
    
      # before_action :find_user_object,except:[:create]

      # skip_before_action :verify_authenticity_token
     
    
 def index

  # @product = Product.search(params[:search])

  # if params[:search]
  #   @product = Product.find(:all, :conditions => ['name LIKE ?', "%#{params[search]}%"])
  # else
  #        @product = current_user.products.order(sort_column + " " + sort_direction)

  # end


  # @search = params["search"]
  #   if @search.present?
  #     @name = @search["name"]
  #     @product = Product.where("name ILIKE ?", "%#{@name}%")

  #     @product = Product.where(name: @name)
  #   end
      # @results = Product.all.where("lower(name) LIKE :search", search: @parameter)

     # @product = current_user.products.search(params[:search])
     # @product = Product.all
       @product = current_user.products.order(sort_column + " " + sort_direction)
   # @product = current_user.products.build
   # @product = Product.find(params[:id])

     end
  
#   def sort_column
#   Product.column_names.include?(params[:sort]) ? params[:sort] : "name"
# end
  def home
      @product = current_user.products.order(sort_column + " " + sort_direction)
  
    # @product = Product.order(sort_column + " " + sort_direction)
	   #@product = Product.search(params[:search])
    @category = Category.all
  end

  def new
    @product = current_user.products.build
    @category = Category.all
  end

  def create 
    @product = current_user.products.build(product_params)
    
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
     @product = current_user.products.find(params[:id])
  	 @category = Category.all
  end

  def update
    product = current_user.products.find(params[:id])
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
    product = current_user.products.find(params[:id])
    @product.destroy
    redirect_to root_url, notice: 'product delete successfully'
  end

    def search
    if params[:search].blank?  
    redirect_to(product_index_path, notice: "Empty field!") and return  
  else  
    @parameter = params[:search].downcase 
    @results = current_user.products.where("lower(name) LIKE :search OR lower(price) LIKE :search OR  lower(descripton) LIKE :search", search: "%#{@parameter}%")
   end  
  end
#   def self.search(search)  
#    where("lower(stores.name) LIKE :search OR lower(cars.name) LIKE :search", search: "%#{search.downcase}%").uniq   
# end
   def method1
   end
   def send_email
    UsermailerMailer.send_user_mail.delivery.now
    # @salary = Salary.find_by_id(params[:id])
    # @email =  @salary.salary_details["email"]
  
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
      params.permit(:name, :descripton, :price, :category_id)

    end
end


