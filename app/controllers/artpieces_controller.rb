class ArtpiecesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def index
        artpieces = Artpiece.all
        render json:  artpieces
    end

    def show
        artpiece = Artpiece.find_by(id: params[:id])
         render json:artpiece
     
     end

    def create
        artpiece = Artpiece.create!(artpiece_params)
        render json: artpiece, status: :created
      end

    def update
        artpiece = Artpiece.find_by(id: params[:id])
        artpiece.update(artpiece_params)
        render json: artpiece
      end

    def destroy
    artpiece = Artpiece.find_by(id: params[:id])
    artpiece.destroy
    head :no_content
    end

    private

        def render_not_found_response
            render json: { error: "Art piece not found" }, status: :not_found
        end
    
        def render_unprocessable_entity_response(invalid)
            render json: { errors: invalid.record.errors }, status: :unprocessable_entity
        end

        def artpiece_params
            params.permit(:customergroup, :artists, :piece, :artstyle, :img_src, :artsession_id,)
        end
end
