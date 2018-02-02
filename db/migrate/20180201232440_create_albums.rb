class CreateAlbums < ActiveRecord::Migration[5.1]
  def change
    create_table :albums do |t|
      t.string :name, null: false
      t.integer :artist_id, null: false
      t.integer :release_yr, null: false
      t.string :image_url

      t.timestamps
    end
    add_index :albums, :name
  end
end
