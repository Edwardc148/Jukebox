class CreateStationSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :station_songs do |t|
      t.integer :song_id, null: false
      t.integer :station_id, null: false

      t.timestamps
    end
  end
end
