class HeroPowersController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
    def create
        hero_power = HeroPower.create!(hero_power_params) 
        hero = Hero.find(hero_power.hero_id)
        render json:  hero, serializer: HeroShowSerializer
    end

    private 
    
    def hero_power_params
        params.permit(:strength, :power_id, :hero_id)
    end

    def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end
end
