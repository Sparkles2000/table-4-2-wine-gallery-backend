class CustomergroupsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def index
        customergroups = Customergroup.all
        render json: customergroups
    end

    def show
        customergroup = Customergroup.find_by(id: params[:id])
        render json: customergroup
    
    end

    def create
      customergroup = Customergroup.create!(customergroups_params)
      render json: customergroup, status: :created
    end

    def update
      customergroup = Customergroup.find_by(id: params[:id])
      customergroup.update(customergroups_params)
      render json: customergroup
    end

   def destroy
    customergroup = Customergroup.find_by(id: params[:id])
    customergroup.destroy
    head :no_content
  end

    private

      def render_not_found_response
        render json: { error: "Customer group not found" }, status: :not_found
      end
    
      def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.errors }, status: :unprocessable_entity
      end

      def customergroups_params
        params.permit(:party, :partyquantity, :customerstatus, :winepurchase, :artsession, :artpiece)
      end
end
