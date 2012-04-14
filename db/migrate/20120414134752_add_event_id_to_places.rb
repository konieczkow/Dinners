class AddEventIdToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :event_id, :integer, null: false
    add_column :events, :places_count, :integer, null: false, default: 0
    add_index :places, :event_id # This is necessary in PostgreSQL
    add_foreign_key :places, :events, dependent: :restrict
  end
end
