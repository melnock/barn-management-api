class CreateBarns < ActiveRecord::Migration[5.2]
  def change
    create_table :barns do |t|
      #array of amenities available at each barn
      t.text :amenities
      t.string :name
      t.integer :number_of_stalls
      t.string :address
      t.integer :board_cost
      t.integer :number_of_paddocks
      #multiple images of different areas of the barn
      t.text :images

      t.timestamps
    end
  end
end
