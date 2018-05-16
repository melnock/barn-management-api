class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.integer :horse_id
      t.integer :supply_id
      #how much
      t.integer :quantity
      #what to use to measure(weight, scoops, etc)
      t.string :measurement
      t.boolean :supplements

      t.timestamps
    end
  end
end
