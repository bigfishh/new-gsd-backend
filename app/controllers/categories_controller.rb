class CategoriesController < ApplicationController

    def index 
        @categories = Category.all
        render json: @categories
    end

    def create
        byebug
        @category = Category.create(category_params)
    end

    private 

    def category_params
        params.permit(:name)
    end

end
