class CreateStations < ActiveRecord::Migration[5.1]
  def change
    create_table :stations do |t|
      t.string :name, null: false
      t.integer :user_id, null: false
      t.timestamps
    end
    add_index :stations, :name
  end
end
