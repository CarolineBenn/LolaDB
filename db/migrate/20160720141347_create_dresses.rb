class CreateDresses < ActiveRecord::Migration
  def change
    create_table :dresses do |t|
      t.string :name
      t.text :description
      t.integer :rrp

      t.timestamps null: false
    end
  end
end
