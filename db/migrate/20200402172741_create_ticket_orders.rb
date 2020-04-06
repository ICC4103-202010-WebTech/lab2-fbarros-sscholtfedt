class CreateTicketOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :ticket_orders do |t|
      t.references :customer
      t.integer :quantity
      t.references :ticket

      t.timestamps
    end
  end
end
