class ReservationsController < ApplicationController

  def create
    @room = Room.find(params[:room_id])
    @reservation = @room.reservations.new(reservation_params)

    start_date = Date.parse(reservation_params[:start_date])
    end_date = Date.parse(reservation_params[:end_date])
    nights = (end_date - start_date).to_i
    @reservation.total_price = nights * @room.price
    @reservation.user_id = current_user.id

    if @reservation.save
      flash[:success] = "Complete your reservation!"
      redirect_back(fallback_location: request.referer)
    else
      flash[:alert] = "Something is wrong!"
    end

  end

  private
    def reservation_params
      params.require(:reservation).permit(:start_date, :end_date, :price)
    end

end
