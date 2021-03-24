class Reservation < ApplicationRecord
  belongs_to :room
  belongs_to :user
  has_many :reviews, dependent: :destroy
end
