class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.string :business_name
      t.string :email
      t.string :billing_email
      t.string :telephone
      t.string :mobile
      t.text :invoicing_address
      t.string :postcode
      t.string :country
      t.string :occupation
      t.string :other
      t.string :facebook
      t.string :twitter
      t.string :instagram
      t.text :notes

      t.timestamps null: false
    end
  end
end
