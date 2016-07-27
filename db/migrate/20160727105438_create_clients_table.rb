class CreateClientsTable < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :first_name,      default: 'n/a' 
      t.string :last_name,       default: 'n/a' 
      t.string :business_name,   default: 'n/a' 
      t.string :email,           default: 'n/a' 
      t.string :billing_email,   default: 'n/a' 
      t.string :telephone,       default: 'n/a' 
      t.string :mobile,          default: 'n/a' 
      t.text :invoicing_address, default: 'n/a' 
      t.string :postcode,        default: 'n/a' 
      t.string :country,         default: 'n/a' 
      t.string :occupation,      default: 'n/a' 
      t.string :other,           default: 'n/a' 
      t.string :facebook,        default: 'n/a' 
      t.string :twitter,         default: 'n/a' 
      t.string :instagram,       default: 'n/a' 
      t.text :notes,             default: 'n/a' 

      t.timestamps null: false
    end
  end
end
