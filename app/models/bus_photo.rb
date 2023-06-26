class BusPhoto < ApplicationRecord
  belongs_to :bus

  validates :image_url, presence: true

end
