class StaticsController < ApplicationController

    def index
        if logged_in?
            redirect_to(home_path)
        end
    end

    def login
        respond_to :html, :js
    end

    def show
        respond_to :html, :js
    end
    
end