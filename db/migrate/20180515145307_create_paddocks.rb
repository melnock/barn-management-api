class CreatePaddocks < ActiveRecord::Migration[5.2]
  def change
    create_table :paddocks do |t|
      #limit the number of horses turned out in a paddock
      t.integer :capacity
      t.integer :barn_id

      t.timestamps
    end
  end
end
