module RoomsHelper
  def is_ready?(room)
   !room.photos.nil? && !room.price.nil? && !room.address.nil? && !room.home_type.nil? && !room.room_type.nil? && !room.guest_count.nil? && !room.bedroom_count.nil? && !room.bathroom_count.nil?
  end
end