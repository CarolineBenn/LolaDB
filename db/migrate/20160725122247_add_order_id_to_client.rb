class AddOrderIdToClient < ActiveRecord::Migration
  def change
    add_column :clients, :order_id, :string
  end
end
