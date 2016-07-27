class RemoveImageFromDresses < ActiveRecord::Migration
  def change
    remove_column :dresses, :image, :string
  end
end
