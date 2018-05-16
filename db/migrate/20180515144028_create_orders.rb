class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :supply_id
      t.integer :quantity
      t.integer :barn_id
      t.integer :manager_id
      t.date :date
      t.datetime :expected_delivery
      t.boolean :recurring

      t.timestamps
    end
  end
end
