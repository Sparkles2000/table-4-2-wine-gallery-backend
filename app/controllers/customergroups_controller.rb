class CustomergroupsController < ApplicationController
    def index
        customergroups = Customergroup.all
        render json:  customergroups
    end
end
