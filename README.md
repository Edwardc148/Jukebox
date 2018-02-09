# Jukebox

[Live Demo](https://jukebox-aa.herokuapp.com/)

Jukebox is a music web application that can adapt to your own personalized style. It is influenced by the Pandora.com with my own twists in design.

## Technology

This full stack application makes use of a variety of software technologies in order to fully implement. Rails, in combination with PostgreSQL, was used for the backend segment of this project.  React and Redux were used in order to maintain the frontend application state.

## Features

1. Continuous music playback is a mandatory feature for all audio applications. This means that users should be able to navigate to different parts of the website without having any interruptions to the current song.

![MusicPlayback](https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_images/ReadMe/Music-Playback.png)

2. Each Station has links to access different subscribed stations as well as the ability to redirect to the current song's artist description page.  Just like the real Pandora!

![StationShow](https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_images/ReadMe/Jukebox-Station-Show.png)

3. Searching for music can really make the difference in a music application.  Being able to search for different artists or songs can help improve the user experience as well as make each user account reflect their own personality.

![Search](https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_images/ReadMe/Search-Functionality.png)


## Sample Code

- Implementation of PostgreSQL pattern matching in order to produce search results.

```ruby
class Api::SearchesController < ApplicationController

  def index
    search_value = params[:searchValue]
    @artists = Artist.where("name ILIKE ?", "%#{search_value}%")
    @songs = Song.where('name ILIKE ?', "%#{search_value}%")
  end

end
```

- Normalization of my global state through the user of Jbuilder

```ruby
json.current_station do
  json.set! @station.id do

    json.extract! @station, :name, :id
    json.songs @station.songs.pluck(:id)
    json.image_url @station.image_url

  end
end

json.current_station_songs do
  @station.songs.each do |song|
    json.set! song.id do

      json.extract! song, :id, :name, :album_id, :duration, :song_url
      json.album_name song.album.name
      json.artist_name song.album.artist.name
      json.album_image_url song.album.image_url
      json.artist_id song.album.artist.id

    end
  end
end
```
