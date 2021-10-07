class ArtsessionsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def index
        artsessions = Artsession.all
        render json:  artsessions
    end
    \
    def show
        artsession = Artsession.find_by(id: params[:id])
        render json: artsession
    
    end

    def create
      artsession = Artsession.create!(artsession_params)
      render json: artsession, status: :created
    end

    def update
      artsession = Artsession.find_by(id: params[:id])
      artsession.update(artsession_params)
      render json: artsession
    end

   def destroy
    artsession = Artsession.find_by(id: params[:id])
    artsession.destroy
    head :no_content
  end

    private

        def render_not_found_response
            render json: { error: "Session not found" }, status: :not_found
        end

        def render_unprocessable_entity_response(invalid)
            render json: { errors: invalid.record.errors }, status: :unprocessable_entity
        end

        def artsession_params
            params.permit(:artstyle, :price, :sessiontype, :piecespergroup, :customergroup_id, :artpiece)
        end
end
