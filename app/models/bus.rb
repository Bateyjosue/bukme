class Bus < ApplicationRecord
  has_many :bus_photos
  has_many :trips
  validates :plate_number, presence: true
  validates :number_of_seat, presence: true
end
