class SearchController < ApplicationController
    
    def index
    end

    def results
        @manufacturers = Manufacturer.where('manufacturerName LIKE ?', "%#{params[:q]}%")
    end
end
