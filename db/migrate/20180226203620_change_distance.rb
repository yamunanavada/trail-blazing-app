class ChangeDistance < ActiveRecord::Migration[5.1]
  def change
    change_column :routes, :distance, 'float USING CAST(distance AS float)'
  end
end
