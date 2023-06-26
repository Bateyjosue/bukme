class Bus < ApplicationRecord
  has_many :bus_photos
  validates :plate_number, presence: true
  validates :number_of_seat, presence: true
end
