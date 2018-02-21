class CreateSavedRoutes < ActiveRecord::Migration[5.1]
  def change
    create_table :saved_routes do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :route, foreign_key: true
      t.integer :rating
      t.string :comment
    end
  end
end
