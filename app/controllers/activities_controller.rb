class ActivitiesController < ApplicationController

    def index
        activities = Activity.all
        render json: activities, include: [:category]
    end
    
    def create
        activity = Activity.new(activity_params)
       if activity.save
            render json: activity, status: :accepted
       else
            render json: {errors: activity.errors.full_messages}, status: :unprocessible_entity
       end
    end

    def show
        activity = Activity.find_by(id: params[:id])
        render json: activity 
    end

    def update

    end

    def destroy
        activity = Activity.find_by(id: params[:id])
        activity.destroy
        render json: activity
    end


    private

    def activity_params
        params.require(:activity).permit(:name, :url, :notes, :category_id) 
    end

end