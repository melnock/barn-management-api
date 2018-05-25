class AddTimeColumnToMeals < ActiveRecord::Migration[5.2]
  def change
    add_column :meals, :time, :string
  end
end
