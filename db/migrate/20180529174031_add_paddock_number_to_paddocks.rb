class AddPaddockNumberToPaddocks < ActiveRecord::Migration[5.2]
  def change
    add_column :paddocks, :paddock_number, :integer
  end
end
