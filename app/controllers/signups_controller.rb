class SignupsController < ApplicationController

    def create
        byebug
        new_signup = Signup.create!(time:params[:time],camper_id:params[:camper_id],activity_id:params[:activity_id])

        if new_signup
            render json:new_signup
        else
            render json:{error: new_signup.errors.full_messages}
            

        end
    end
end
