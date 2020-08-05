module Api
    module V1
        class FoodsController < ApplicationController
            skip_before_action :verify_authenticity_token
            
            def index
                foods = Food.all

                render json: FoodSerializer.new(foods, options).serialized_json
            end

            def show
                food = Food.find_by(slug: params[:slug])

                render json: FoodSerializer.new(food, options).serialized_json
            end

            def create
                food = Food.new(food_params)

                if food.save 
                    render json: FoodSerializer.new(food).serialized_json
                else
                    render json: {error: food.errors.messages}, status: 422
                end    
            end

            def update
                food = Food.find_by(slug: params[:slug])

                if food.update(food_params)
                    render json: FoodSerializer.new(food, options).serialized_json
                else
                    render json: {error: food.errors.messages}, status: 422
                end    
            end

            def destroy
                food = Food.find_by(slug: params[:slug])

                if food.destroy
                    head :no_content
                else
                    render json: {error: food.errors.messages}, status: 422
                end    
            end



            private

            def food_params
                params.require(:food).permit(:name, :image_url)
            end

            def options
                @options ||= {include: %i[reviews]}
            end
        end
    end
end 
