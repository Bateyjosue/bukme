class User < ApplicationRecord
  belongs_to :role
  has_many :books
  validates :full_name, presence: true
  validates :email, presence: true
  validates :email, presence: true
  validates :phone, presence: true
end
