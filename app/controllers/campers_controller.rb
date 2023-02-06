class CampersController < ApplicationController

    def index
        campers = Camper.all
        render json: campers
    end

    def show
        camper = Camper.find_by(id:params[:id])
        render json: camper
    end

    def create
        new_camper = Camper.create!(name:params[:name],age:params[:age])
        if new_camper
            render json:new_camper
        else
            render json: {error: new_camper.errors.full_messages}, status:unprocessible_entity

        end
    end

end
