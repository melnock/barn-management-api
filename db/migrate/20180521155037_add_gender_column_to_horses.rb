class AddGenderColumnToHorses < ActiveRecord::Migration[5.2]
  def change
    add_column :horses, :gender, :string
  end
end
