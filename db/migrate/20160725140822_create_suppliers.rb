class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.string :business_name
      t.string :contact_name
      t.string :email
      t.string :billing_email
      t.string :telephone
      t.string :mobile
      t.text   :invoicing_address
      t.string :postcode
      t.string :country
      t.text   :notes

      t.timestamps null: false
    end
  end
end
