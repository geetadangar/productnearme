class Product < ApplicationRecord
  belongs_to :category
  # def self.ransackable_attributes(auth_object = nil)
  #   %w(name description)
  # end
   # default_scope { order(created_at: :desc)}
   # Product.order(:name)
   
#    def self.search(search)
#   if search
#     find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
#   else
#     find(:all)
#   end
# end

  # include Elasticsearch::Model
  # include Elasticsearch::Model::Callbacks
 #  filterrific(
 # default_filter_params: { sorted_by: 'created_at_desc' },
 # available_filters: [
 # :sorted_by,
 # :search_query,
 # :with_country_id,
 # ]
 # )
#   filterrific(
#   default_filter_params: { sorted_by: 'created_at_desc' },
#   available_filters: %i[
#     sorted_by
#     with_price_lte
#   ]
# )
# filterrific(
#     default_settings: { sorted_by: 'created_at_desc' },
#     filter_names: [
#       :search_query,
#       :with_approved,
#       :with_category_id
#     ]
#   )

#   scope :sorted_by, (lambda do |sort_option|

#   direction = (sort_option =~ /desc$/) ? 'desc' : 'asc'

#   case sort_option.to_s
#   when /^created_at_/
#     order("product.created_at #{ direction }")
#   when /^name_/
#     order("product.name #{ direction }")
#   else
#     raise(ArgumentError, "Invalid sort option: #{ sort_option.inspect }")
#   end
# end)


#   scope :with_price_lte, (lambda do |price|
#   where('price >= ?', price)
# end)
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