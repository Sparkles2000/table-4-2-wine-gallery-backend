class Customergroup < ApplicationRecord
    def index
        brandofwines = Brandofwine.all
        render json:  brandofwines
    end
end
