class PowersController < ApplicationController

    rescue_from ActiveRecord::RecordInvalid, with: :unprocessable_entity_message

    def index 
        powers = Power.all 
        render json: powers, status: :ok
    end

    def show
        power = Power.find_by(id: params[:id])
        if power 
            render json: power, status: :ok
        else 
            render jason: { error: "Power not found" }, status: :not_found
        end
    end

    def update
        power = Power.find_by(id: params[:id])
        if power
            power.update!(power_params)
            render json: power, status: :created
        else
          render json: { error: "Power not found" }, status: :not_found
        end
      end


    private

    def power_params
        params.require(:power).permit(:description)
    end

    def unprocessable_entity_message 
        render json: { error: ["Validation errors"]}, status: :unprocessable_entity 
    end
end

