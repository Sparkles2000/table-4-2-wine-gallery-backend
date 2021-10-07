class WinepurchasesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def index
        winepurchases = Winepurchase.all
        render json:  winepurchases
    end
    def create
        winepurchase = Winepurchase.create!(inepurchase_params)
        render json: winepurchase, status: :created
      end

    def update
        winepurchase = Winepurchase.find_by(id: params[:id])
        winepurchase.update(winepurchase_params)
        render json: winepurchase
      end

    def destroy
    winepurchase = Winepurchase.find_by(id: params[:id])
    winepurchase.destroy
    head :no_content
    end

    private

        def render_not_found_response
            render json: { error: "Purchase not found" }, status: :not_found
        end
    
        def render_unprocessable_entity_response(invalid)
            render json: { errors: invalid.record.errors }, status: :unprocessable_entity
        end

        def winepurchase_params
            params.permit(:purchasepackage, :ordered, :customergroup_id, :brandofwine_id )
        end
end
