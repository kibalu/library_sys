class AddTopadminToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :topadmin, :boolean, default: false
  end
end
