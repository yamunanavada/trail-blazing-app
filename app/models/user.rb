class User < ApplicationRecord
  has_many :saved_routes
  has_many :routes, through: :saved_routes
  validates :username, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :birthday, presence: true
  validates :password, presence: true


  has_secure_password

end
