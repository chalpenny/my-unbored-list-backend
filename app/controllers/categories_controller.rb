class CategoriesController < ApplicationController

    def index
        categories = Category.all
        render json: categories
    end

    def show
        category = Category.find_by(id: params[:id])
        render json: category
    end

    def create
        category = Category.new(category_params)
        if category.save
            render json: category, status: :accepted
        else
            render json: {errors: category.errors.full_messages}, status: :unprocessible_entity
        end
    end

    def update

    end

    def destroy

    end
    

    private

    def category_params
        params.require(:category).permit(:name) 
        params.permit()
    end

end

