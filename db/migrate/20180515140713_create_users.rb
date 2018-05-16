class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :emergency_contact
      t.string :phone_number
      #grants access to scheduling and all features
      t.boolean :is_manager,  default: false
      #allows user to view schedule for employees and make report cards
      t.boolean :is_employee,  default: false
      t.string :mailing_address
      t.integer :barn_id

      t.timestamps
    end
  end
end
