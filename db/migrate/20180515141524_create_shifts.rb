class CreateShifts < ActiveRecord::Migration[5.2]
  def change
    create_table :shifts do |t|
      t.integer :employee_id
      t.integer :barn_id
      t.datetime :date
      t.boolean :clocked_in, default: false
      t.boolean :clocked_out, default: false
      t.integer :total_time

      t.timestamps
    end
  end
end
