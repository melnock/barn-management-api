class CreateHorses < ActiveRecord::Migration[5.2]
  def change
    create_table :horses do |t|
      t.string :name
      t.integer :birth_year
      t.integer :user_id
      t.integer :stall_id
      t.text :tack
      t.text :supplements
      t.text :blankets
      t.integer :vet_id
      t.integer :farrier_id
      t.integer :paddock_id
      t.string :image

      t.timestamps
    end
  end
end
