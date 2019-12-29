class User < ApplicationRecord
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :full_name, :phone, presence: true
  validates :phone, uniqueness: true
  validates :password, presence: true, on: :create
  enum role: { driver: 0, passenger: 1 }
end
