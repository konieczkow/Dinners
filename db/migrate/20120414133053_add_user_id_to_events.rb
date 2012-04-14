class AddUserIdToEvents < ActiveRecord::Migration
  def change
    add_column :events, :user_id, :integer, null: false
    add_column :users, :events_count, :integer, null: false, default: 0
    add_index :events, :user_id # This is necessary in PostgreSQL
    add_foreign_key :events, :users, dependent: :restrict
  end
end
