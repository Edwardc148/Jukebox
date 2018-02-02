class ChangeValidationOnUrlForSongs < ActiveRecord::Migration[5.1]
  def change
    remove_column :songs, :song_url
    add_column :songs, :song_url, :string, null: false
  end
end
