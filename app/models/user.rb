class User < ApplicationRecord
  has_many :saved_routes
  has_many :routes, through: :saved_routes
  has_secure_password

end
