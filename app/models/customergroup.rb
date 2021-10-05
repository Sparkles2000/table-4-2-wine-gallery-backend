class Customergroup < ApplicationRecord
    def index
        customergroups = Customergroup.all
        render json:  customergroups
    end
end
