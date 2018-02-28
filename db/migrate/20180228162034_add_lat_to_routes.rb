class AddLatToRoutes < ActiveRecord::Migration[5.1]
  def change
    add_column :routes, :startingcityLat, :float
    add_column :routes, :startingcityLng, :float
  end
end
