class ChangeRoutes < ActiveRecord::Migration[5.1]
  def change
    change_column :routes, :distance, :string
  end
end
