class WinepurchasesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
    def index
        winepurchases = Winepurchase.all
        render json:  winepurchases
    end
end
