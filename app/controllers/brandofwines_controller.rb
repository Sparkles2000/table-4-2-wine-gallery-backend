class BrandofwinesController < ApplicationController
    def index
        brandofwines = Brandofwine.all
        render json:  brandofwines
    end
end
