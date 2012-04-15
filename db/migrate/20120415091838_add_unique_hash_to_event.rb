class AddUniqueHashToEvent < ActiveRecord::Migration
  def change
    add_column :events, :unique_hash, :string, unique: true, null: false
  end
end
