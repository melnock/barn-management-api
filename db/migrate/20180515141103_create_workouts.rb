class CreateWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :workouts do |t|
      t.integer :horse_id
      t.integer :user_id
      t.boolean :is_training
      t.boolean :is_lesson
      t.integer :duration
      t.datetime :date
      t.integer :intensity
      #fluctuates depending on whether it's training, lesson, or neither
      t.integer :cost


      t.timestamps
    end
  end
end
