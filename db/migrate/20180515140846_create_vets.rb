class CreateVets < ActiveRecord::Migration[5.2]
  def change
    create_table :vets do |t|
      t.string :phone_number
      t.string :email
      t.string :pager_number
      t.string :address
      t.string :name
      t.string :practice_name

      t.timestamps
    end
  end
end
