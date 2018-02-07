json.current_station do
  json.set! @station.id do
    json.extract! @station, :name, :id
    json.songs @station.songs.pluck(:id)
    json.image_url @station.songs.first.album.image_url
  end
end

json.current_station_songs do
  @station.songs.each do |song|
    json.set! song.id do
      json.extract! song, :id, :name, :album_id, :duration, :song_url
      json.album_name song.album.name
      json.artist_name song.album.artist.name
      json.album_image_url song.album.image_url
    end
  end
end
