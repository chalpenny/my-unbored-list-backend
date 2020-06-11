class ActivitiesController < ApplicationController

    def index
        activities = Activity.all
        render json: activities
    end
    
    def create
       activity = Activity.new(activity_params)
       if activity.save
            render json: activity, status: :acepted
       else
            render json: {errors: activity.errors.full_messages}, status: :unprocessible_entity
    end

    def show
        activity = Activity.find_by(id: params[:id])
        render json: activity 
    end


    private

    def activity_params
        params.require(:activity).permit(:name, :url, :notes, status, :category_id) 
        params.permit()
    end

end
