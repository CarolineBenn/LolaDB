class CreateFabrics < ActiveRecord::Migration
  def change
    create_table :fabrics do |t|
      t.string :name
      t.integer :cost
      t.string :fabric_type

      t.timestamps null: false
    end
  end
end
