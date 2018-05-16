class AddColumnCommentsToWorkouts < ActiveRecord::Migration[5.2]
  def change
    add_column :workouts, :comments, :text
  end
end
