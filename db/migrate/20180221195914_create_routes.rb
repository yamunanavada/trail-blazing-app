class CreateRoutes < ActiveRecord::Migration[5.1]
  def change
    create_table :routes do |t|
      t.string :name
      t.string :city
      t.text :markers, array: true, default: []
      t.float :distance
      t.integer :difficulty
    end
  end
end
