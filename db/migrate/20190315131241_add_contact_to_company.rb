class AddContactToCompany < ActiveRecord::Migration[5.2]
  def change
    add_column :companies, :privacy_contact, :string
    add_column :companies, :security_contact, :string
    add_column :companies, :phone, :string
  end
end
