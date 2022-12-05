class HeroPowersController < ApplicationController

    def create
        hero_power = HeroPower.create(hero_power_params)
        if hero_power.valid?
            render json: hero_power, status: :created
        else 
            render json: {errror: hero_power.errors.full_messages}, status: :unprocessable_entity
        end
    end

    private
    def hero_power_params
        params.permit(:strength, :power_id, :hero_id)
    end
end
