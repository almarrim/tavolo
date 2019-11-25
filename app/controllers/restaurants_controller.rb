class RestaurantsController < ApplicationController
    def index
      @restaurants = Restaurant.all
    end

    def show
      @restaurant = Restaurant.find(params[:id])
    #   @reservations = @restaurant.reservations
    end
      
    def new
        @user = User.find(params[:user_id])
        @restaurant = Restaurant.new

    end
      
    def create
      @restaurant = current_user.restaurants.create(params.require(:restaurant).permit(:img, :name))
      if @restaurant.save 
      redirect_to restaurants_path
      else 
        render :new
      end
    end
      
    def edit
      @restaurant = Restaurant.find(params[:id])
    end
    
    def update
      @restaurant = Restaurant.find(params[:id])
      @restaurant.create(params.require(:restaurant).permit(:user_id, :img, :name))
      redirect_to restaurant
    end
    
    def destroy
      Restaurant.find(params[:id]).destroy
      redirect_to restaurants_path
    end
end