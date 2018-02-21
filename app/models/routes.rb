class Route < ApplicationRecord
  has_many :saved_routes
  has_many :users, through: :saved_routes


end
