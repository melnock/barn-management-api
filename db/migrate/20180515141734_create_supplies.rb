class CreateSupplies < ActiveRecord::Migration[5.2]
  def change
    create_table :supplies do |t|
      # hash of the percentages of fat, protein and fiber for grains
      t.text :protein_fiber_fat
      #one of type: hay, grain, shavings
      t.string :type_of_supply
      t.string :vendor
      t.integer :cost
      t.integer :weight
      t.string :brand
      t.string :name

      t.timestamps
    end
  end
end
