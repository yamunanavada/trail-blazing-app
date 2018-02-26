class ChangeDifficulty < ActiveRecord::Migration[5.1]
  def change
      change_column :routes, :difficulty, :string
  end
end
