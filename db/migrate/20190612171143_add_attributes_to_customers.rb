class AddAttributesToCustomers < ActiveRecord::Migration[5.2]
  def change

    add_column :customers, :first_name, :string
    add_column :customers, :last_name, :string, null: false, default: ""
    add_column :customers, :address, :text
    add_column :customers, :city, :string
    add_column :customers, :state, :string
    add_column :customers, :postal_code, :integer
    add_column :customers, :country, :string
    add_column :customers, :home_phone, :string
    add_column :customers, :cell_phone, :string
  end
end
