class Trip < ApplicationRecord
  belongs_to :bus
  has_many :books
end
