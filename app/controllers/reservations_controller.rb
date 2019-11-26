class ReservationsController < ApplicationController
    def index
        @reservations = Reservation.all
        @user = current_user
    end

    def show
        @reservation = Reservation.find(params[:id])
        @user = current_user

    end

    def new
        @reservation = Reservation.new
        @restaurant = Restaurant.find(params[:restaurant_id])
        @user = current_user
    end

    def create
        # @reservation = Reservation.new()
        @user = current_user
        @restaurant = Restaurant.find(params[:reservation][:restaurant_id])
        @reservation=current_user.reservations.create(reservation_params)
       if @reservation.save
        redirect_to reservations_path
       else
        render :new
       end

    end

    def edit
        @reservation = Reservation.find(params[:id])
        @name = current_user
        @restaurant = Restaurant.find(@reservation.restaurant_id)
    end

    def update
        @reservation = Reservation.find(params[:id])
        @reservation.update(reservation_params)
        redirect_to @reservation
      end


    def destroy
        @reservation = Reservation.find(params[:id])
        @reservation.destroy
    
        redirect_to reservations_path
      end
    private
    def reservation_params
        params.require(:reservation).permit(:start_time, :user_id, :restaurant_id)
      end
end
