class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.text :notes
      t.string :business_name
      t.text :business_address
      t.string :facebook
      t.string :twitter
      t.string :instagram

      t.timestamps null: false
    end
  end
end
