class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :twitter_id
      t.string :screen_name

      t.timestamps null: false
    end

    add_index :users, :twitter_id, unique: true
  end
end
