json.artists_found do
  @artists.each do |artist|
    json.set! artist.id do
      json.extract! artist, :id, :name
    end
  end
end

json.songs_found do
  @songs.each do |song|
    json.set! song.id do
      json.extract! song, :id, :name
    end
  end
end
