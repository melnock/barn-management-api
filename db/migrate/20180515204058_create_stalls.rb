class CreateStalls < ActiveRecord::Migration[5.2]
  def change
    create_table :stalls do |t|
      t.integer :barn_id
      t.integer :horse_id
      t.integer :stall_number

      t.timestamps
    end
  end
end
