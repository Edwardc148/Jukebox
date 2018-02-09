class AddImageUrlColumn < ActiveRecord::Migration[5.1]
  def change
    add_column :stations, :image_url, :string
  end
end
