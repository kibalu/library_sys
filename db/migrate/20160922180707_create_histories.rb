class CreateHistories < ActiveRecord::Migration[5.0]
  def change
    create_table :histories do |t|
      t.string :action
      t.integer :room_id
      t.integer :user_id

      t.timestamps
    end
  add_index :histories, [:room_id, :user_id, :created_at]
  end
end
