class SearchController < ApplicationController

 def search      
  #   @product = Product.search(params[:search])
  #   respond_to do |format|
  #    format.js  { render :partial => "elements/livesearch", :locals => {:search => @product, :query => params[:search]} }
  #    format.html    { render :index }
  # end
  @product = Product.search(params[:search].split("=").last)
          respond_to :js
end
end
