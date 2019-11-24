class RestaurantController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @user = User.find(params[:id])
    @restaurants = @user.restaurants
  end
  
  def new
    @restaurant = Restaurant.new
  end
  
  def create
    Restaurant.create(params.require(:restaurant).permit(:user_id, :img, :name))
    redirect_to restaurants_path
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

def index
  @artists = Artist.all.order("name")
end

def show
  @artist = Artist.find(params[:id]) #params came from the router
  @songs = @artist.songs
end

def new
  @artist = Artist.new
end

def create
  Artist.create(params.require(:artist).permit(:name, :albums, :hometown, :img))
  redirect_to artists_path
end

def edit
  @artist = Artist.find(params[:id])
end

def update
  artist = Artist.find(params[:id])
  artist.update(params.require(:artist).permit(:name, :albums, :hometown, :img))

  redirect_to artist
end

def destroy
  Artist.find(params[:id]).destroy
  redirect_to artists_path
end