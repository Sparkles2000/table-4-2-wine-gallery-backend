class ArtsessionsController < ApplicationController
    def index
        artsessions = Artsession.all
        render json:  artsessions
    end
end
