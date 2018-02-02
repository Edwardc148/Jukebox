class AddUrlColumnToSongs < ActiveRecord::Migration[5.1]
  def change
    add_column :songs, :song_url, :string
  end 
end
