class SearchesController < ApplicationController
   before_action :set_searches, only: [:show, :edit, :update, :destroy]

  def index
  # @product = Product.all
  # @search_results_product =Product.search(params[:search],params[:fieldtype])
    if params[:search]
    	  @search_results_product =Product.search(params[:search],params[:fieldtype])

      # @search_results_product = Product.search_by_name_and_Description(params[:search])
      respond_to do |format|
        format.js { render partial: 'search-results'}
      end
    else
    @product = Product.all
    end

end
end
