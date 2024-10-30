class HomeController < ApplicationController
    before_action :require_home_visit
  
    def index
    end
  
    def feed
    end
  
    def tasks
    end
  
    def profile
    end
  
    private
  
    def require_home_visit
      redirect_to root_path unless session[:visited_home]
    end
  end
  
  