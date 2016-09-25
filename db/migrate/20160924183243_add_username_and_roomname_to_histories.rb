class AddUsernameAndRoomnameToHistories < ActiveRecord::Migration[5.0]
  def change
    add_column :histories, :username, :string
    add_column :histories, :roomname, :string
  end
end
