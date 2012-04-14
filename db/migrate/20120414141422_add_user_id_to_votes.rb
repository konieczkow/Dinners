class AddUserIdToVotes < ActiveRecord::Migration
  def change
    add_column :votes, :user_id, :integer, null: false
    add_column :users, :votes_count, :integer, null: false, default: 0
    add_index :votes, :user_id # This is necessary in PostgreSQL
    add_foreign_key :votes, :users, dependent: :restrict
  end
end
