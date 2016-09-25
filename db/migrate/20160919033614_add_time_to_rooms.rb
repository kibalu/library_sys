class AddTimeToRooms < ActiveRecord::Migration[5.0]
  def change
    add_column :rooms, :time, :string
  end
end
