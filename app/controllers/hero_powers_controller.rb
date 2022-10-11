class HeroPowersController < ApplicationController

    wrap_parameters format: []

    def create
        heropower = HeroPower.create!(hero_powers_params)
        if heropower
          render json: heropower, status: :created
        else
          render json: { errors: heropower.errors }, status: :unprocessable_entity
        end
    end




  #   def index 
  #     heropowers = HeroPower.all 
  #     render json: heropowers
  #   end

  #   def show
  #     heropower = HeroPower.find_by(id: params[:id])
  #         render json: heropower, status: :ok
  #   end

    def destroy 
      heropower = HeroPower.find_by(id: params[:id]) 
      if heropower 
        heropower.destroy
          head :no_content, status: :no_content
      else
          render json: { error: "Heropower not found" }, status: :not_found
        end
  end





    private

    def hero_powers_params
        params.permit(:strength, :hero_id, :power_id)
    end
end

