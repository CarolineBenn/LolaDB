class RemoveOrderIdFromClient < ActiveRecord::Migration
  def change
    remove_column :clients, :order_id, :string
  end
end
