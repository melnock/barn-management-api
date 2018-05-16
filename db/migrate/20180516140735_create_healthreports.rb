class CreateHealthreports < ActiveRecord::Migration[5.2]
  def change
    create_table :healthreports do |t|
      t.integer :horse_id
      #keep track of average levels of each
      t.integer :hay
      t.integer :water
      t.integer :grain
      t.text :comments
      t.integer :manure

      t.timestamps
    end
  end
end
