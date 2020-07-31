class ApplicationController < ActionController::Base
	  # before_action :authenticate_user!
	  before_action :authenticate_user!, except: [:show,  :home, :method1]
  		  
end
