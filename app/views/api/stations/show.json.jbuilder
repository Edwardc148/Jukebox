json.set! @station.id do
  json.extract! @station, :name, :id
  json.songs @station.songs.pluck(:id)
  json.image_url @station.songs.first.album.image_url
end
