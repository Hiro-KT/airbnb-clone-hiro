class PhotosController < ApplicationController

  def create
    @room = Room.find(params[:room_id])

    if params[:photos]
      params[:photos].each do |img|
        @room.photos.create(image: img)
      end

      @photos = @room.photos
      redirect_back(fallback_location: request.referer, notice: "Saved...")
    end
  end

  def destroy
    @room = Room.find(params[:room_id])
    @photo = Photo.find(params[:id])
    @photo.destroy

    redirect_back(fallback_location: request.referer, notice: "Deleted...")
  end
end
