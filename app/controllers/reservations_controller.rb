class ReservationsController < ApplicationController
    def index
        @reservations = Reservation.all
    end

    def show
         
    end

    def new
        @user = User.find(params[:user_id])
        @reservation = Reservation.new
    end

    def create 
        user = User.find(params[:reservation][:user_id])
        Reservation.create(reservation_params)
        
        redirect_to reservations
    end

    def edit
        @reservation = Reservation.find(params[:id])
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
