@stations.each do |station|
  json.set! station.id do
    json.extract! station, :name, :id
    json.image_url station.songs.sample.album.image_url
    json.songs station.songs.pluck(:id)
  end
end
