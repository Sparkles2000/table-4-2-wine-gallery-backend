class BrandofwinesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def index
        brandofwines = Brandofwine.all
        render json:  brandofwines
    end

    def show
       brandofwine = Brandofwine.find_by(id: params[:id])
        render json:brandofwine
    
    end

    def create
     brandofwine = Brandofwine.create!(brandofwine_params)
      render json:brandofwine, status: :created
    end

    def update
     brandofwine = Brandofwine.find_by(id: params[:id])
     brandofwine.update(brandofwine_params)
      render json:brandofwine
    end

   def destroy
   brandofwine = Brandofwine.find_by(id: params[:id])
   brandofwine.destroy
    head :no_content
  end

    private

      def render_not_found_response
        render json: { error: "Brand of wine not found" }, status: :not_found
      end
    
      def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.errors }, status: :unprocessable_entity
      end

      def brandofwine_params
        params.permit(:brand, :age, :winetype, :price, :drysweet, :alcoholcontent, :img_src)
      end
end
