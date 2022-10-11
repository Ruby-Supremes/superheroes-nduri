class HeroPowersController < ApplicationController

 
    wrap_parameters format: []

    def create
        heropower = HeroPower.create!(hero_powers_params)
          render json: heropower, status: :created
    end


    private

    def hero_powers_params
        params.permit(:strength, :hero_id, :power_id)
    end
end

