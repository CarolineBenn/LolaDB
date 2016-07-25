class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :order_id
      t.integer :client_id
      t.string  :order_number
      t.integer :dress_id
      t.integer :fabric_id
      t.integer :qty
      t.string  :status
      t.date    :expected_date
      t.timestamps null: false
    end
  end
end
