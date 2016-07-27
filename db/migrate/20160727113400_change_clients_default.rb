class ChangeClientsDefault < ActiveRecord::Migration
  def change
    change_column_default :clients, :first_name, nil
    change_column_default :clients, :last_name, nil
    change_column_default :clients, :business_name, nil
    change_column_default :clients, :email, nil
    change_column_default :clients, :billing_email, nil
    change_column_default :clients, :telephone, nil
    change_column_default :clients, :mobile, nil
    change_column_default :clients, :invoicing_address, nil
    change_column_default :clients, :postcode, nil
    change_column_default :clients, :country, nil
    change_column_default :clients, :occupation, nil
    change_column_default :clients, :other, nil
    change_column_default :clients, :facebook, nil
    change_column_default :clients, :twitter, nil
    change_column_default :clients, :instagram, nil
    change_column_default :clients, :notes, nil
  end
end
