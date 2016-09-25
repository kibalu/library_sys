class AddBookToRooms < ActiveRecord::Migration[5.0]
  def change
    add_column :rooms, :book, :string
  end
end
