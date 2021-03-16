module RoomsHelper
  def is_ready?(room)
   !room.listing_name.nil? && room.photos.length > 0 && !room.price.nil? && !room.address.nil? && !room.home_type.nil? && !room.room_type.nil? && !room.guest_count.nil? && !room.bedroom_count.nil? && !room.bathroom_count.nil?
  end
end