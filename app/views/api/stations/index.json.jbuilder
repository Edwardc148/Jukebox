@stations.each do |station|
  json.set! station.id do
    json.extract! station, :name, :id
    json.image_url station.songs[0].album.image_url
    json.songs station.songs.pluck(:id)
  end
end
