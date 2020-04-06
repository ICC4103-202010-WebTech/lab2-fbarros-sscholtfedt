class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :lastName
      t.string :address
      t.string :e_mail
      t.integer :phone
      t.string :password

      t.timestamps
    end
  end
end
