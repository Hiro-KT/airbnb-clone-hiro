class RoomsController < ApplicationController
  def new
    @room = Room.new
  end

  def create
    @room = Room.new(user_params)

    if @room.save
      redirect_to room_url
    else
      render 'new'
    end
  end

  def room_params
    params.require(:room).permit(:home_type, :room_type, :guest_count, :bedroom_count, :bathroom_count)
  end
end