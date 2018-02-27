class ChangeMarkersInRoutes < ActiveRecord::Migration[5.1]
  def change
    change_column :routes, :markers, :string
  end
end
