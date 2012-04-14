class AddUniqueConstraintToVotes < ActiveRecord::Migration
  def change
    add_index :votes, [:place_id, :user_id], unique: true
  end
end
