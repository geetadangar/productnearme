class ApplicationController < ActionController::Base
	  # before_action :authenticate_user!
	  before_action :authenticate_user!, except: [:show,  :home, :method1]
	   # before_action :set_listing, only: [:home]
	     # before_filter :user_permission, :only => :edit
	    #  private
	    #  def current_user
    	# @_current_user ||= session[:current_user_id] &&
     #  	User.find_by(id: session[:current_user_id])
  		 #  end
end
