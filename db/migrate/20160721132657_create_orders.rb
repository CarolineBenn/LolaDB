class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :order_number
      t.integer :quantity
      t.string :status
      t.date :expected_date

      t.timestamps null: false
    end
  end
end
