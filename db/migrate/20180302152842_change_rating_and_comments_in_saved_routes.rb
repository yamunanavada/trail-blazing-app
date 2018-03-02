class ChangeRatingAndCommentsInSavedRoutes < ActiveRecord::Migration[5.1]
  def change
    change_column :saved_routes, :rating, :integer, :null=>true
    change_column :saved_routes, :comment, :string, :null=>true
  end
end
