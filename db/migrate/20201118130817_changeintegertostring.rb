class Changeintegertostring < ActiveRecord::Migration[6.0]
  def change
    change_column :restaurants, :phone_number, :string
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
