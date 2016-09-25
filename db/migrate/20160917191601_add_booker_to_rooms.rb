class AddBookerToRooms < ActiveRecord::Migration[5.0]
  def change
    add_column :rooms, :booker, :integer
  end
end
