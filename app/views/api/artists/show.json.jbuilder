json.extract! @artist, :id, :name, :description
json.albums @artist.albums
json.image_url @artist.albums.first.image_url
