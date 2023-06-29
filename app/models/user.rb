class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable
  belongs_to :role
  has_many :books
  validates :full_name, presence: true
  validates :email, presence: true
  validates :email, presence: true
  validates :phone, presence: true
end
