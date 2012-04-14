class AddPlaceIdToVotes < ActiveRecord::Migration
  def change
    add_column :votes, :place_id, :integer, null: false
    add_column :places, :votes_count, :integer, null: false, default: 0
    add_index :votes, :place_id # This is necessary in PostgreSQL
    add_foreign_key :votes, :places, dependent: :restrict
  end
end
