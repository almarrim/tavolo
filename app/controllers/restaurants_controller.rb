class RestaurantsController < ApplicationController
    before_action :is_owner, only: [:new, :create]
    before_action :is_current_owner, only: [:destroy]
    def index
      @restaurants = Restaurant.all
      @user= current_user.role
    end

    def show
      @restaurant = Restaurant.find(params[:id])
    #   @reservations = @restaurant.reservations
    end
      
    def new
        @restaurant = Restaurant.new
    end
      
    def create
      @restaurant = current_user.restaurants.create(params.require(:restaurant).permit(:img, :name, :user_id))
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

    private
    def is_owner
        if current_user.role == "owner"
            return true
        else
            redirect_to restaurants_path
        end
    end
    def is_current_owner
        if current_user.id == Restaurant.find(params[:id]).user_id
            return true
        else
            redirect_to restaurants_path
        end

    end
end