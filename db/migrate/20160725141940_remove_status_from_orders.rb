class RemoveStatusFromOrders < ActiveRecord::Migration
  def change
    remove_column :orders, :quantity, :integer
  end
end
