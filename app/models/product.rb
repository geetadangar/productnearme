class Product < ApplicationRecord
  belongs_to :category
   default_scope { order(created_at: :desc)}
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
  
  # if search
  #   find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
  # else
  #   find(:all)
  # end

  # def self.search(params)
  #   tire.search(load: true) do
  #     query { string params[:query], default_operator: "AND" } if params[:query].present?
  #     filter :range, published_at: {lte: Time.zone.now}
  #   end
  # end


#   def self.search(search)
#  basic_search(name: search, description: search, price: search).take(5) #-> uses textacular gem
# end

  # def self.search(search)
  #           if search
  #             case type
  #                         when "name"
  #                                 where('name LIKE ?', "%#{search}%")
  #                         when "Description"                                
  #                                 where('Description LIKE ?', "%#{search}%")
  #                         when "price"
  #                                 where('price LIKE ?', "%#{search}%")
  #                 end
  #           else
  #             scoped
  #           end        
  #         end
  #       def self.search(search)
  #         if search
  #           case type
  #       when "allfields"
  #                               where('name LIKE ? OR Description LIKE ? OR price LIKE ?', "%#{search}%","%#{search}%", "%#{search}%")
  #          end
  #         	else
  #           all
		# 	end
		# end
		# def self.search(search)
		# 	joins(:category).where("category.name ILIKE :search OR category.Description ILIKE :search OR price ILIKE :search", :search => "%#{product}%")
		# end
	# def self.search(search)
 #    if search
 #      where('name LIKE ?', "%#{search}%")
 #    else
 #      scoped
 #    end
 #  end
#  def self.search(search)
#   if search
#     # where('name LIKE ?', "%#{search}%")
#     where('name LIKE ? OR Description LIKE ? OR price LIKE ?', "%#{search}%","%#{search}%", "%#{search}%")
#   else
#     # scoped
#     all
#   end
# end
# def self.search(search)
#           if search
#                 Product.where("name LIKE '%#{search}%'")
#           else
#                 Product.all
#           end
#       end
#       User.includes(:product).where("product.rate > ?", 4).order('product DESC')
# 		def self.search(search)
#   where("name iLIKE ?", "%#{search}%") 
#   where("Description iLIKE ?", "%#{search}%")
# end

	end