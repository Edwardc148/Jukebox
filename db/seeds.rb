# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# user1 = User.create(email: "demo@gmail.com", name: "Demo", )
require 'faker'

User.destroy_all
Station.destroy_all
Artist.destroy_all
Album.destroy_all
Song.destroy_all
StationSong.destroy_all

demo = User.create(name: "Demo", email: "demo@gmail.com", password: "password")

artist1 = Artist.create(name: "3 Doors Down", description: "This is a demo description")
artist2 = Artist.create(name: "Cascada", description: "Second Description")
artist3 = Artist.create(name: "Chainsmokers ft. Halsey", description: "Second Description")
artist4 = Artist.create(name: "Ed Sheeran", description: "Second Description")
artist5 = Artist.create(name: "Foo Fighters", description: "Second Description")
artist6 = Artist.create(name: "Outkast", description: "Second Description")
artist7 = Artist.create(name: "Nickelback", description: "Second Description")
artist8 = Artist.create(name: "Zara Larsson ft. MNEK", description: "Second Description")
artist9 = Artist.create(name: "Clean Bandit ft. Jess Glynne", description: "Second Description")
artist10 = Artist.create(name: "Chris Brown", description: "Second Description")
artist11 = Artist.create(name: "Martin Garrix & Dua Lipa", description: "Second Description")
artist12 = Artist.create(name: "Avril Lavigne", description: "Second Description")
artist13 = Artist.create(name: "Clean Bandit", description: "Second Description")
artist14 = Artist.create(name: "Britney Spears", description: "Second Description")

album1 = Album.create(name: Faker::Ancient.unique.hero, artist_id: artist1.id, release_yr: 2018, image_url: 'https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_images/1.jpg')

album2 = Album.create(name: Faker::Ancient.unique.hero, artist_id: artist2.id, release_yr: 2017, image_url: 'https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_images/2.jpg')

album3 = Album.create(name: Faker::Ancient.unique.hero, artist_id: artist3.id, release_yr: 2017, image_url: 'https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_images/3.jpg')

album4 = Album.create(name: Faker::Ancient.unique.titan, artist_id: artist4.id, release_yr: 2017, image_url: 'https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_images/4.jpg')

album5 = Album.create(name: Faker::Ancient.unique.titan, artist_id: artist5.id, release_yr: 2017, image_url: 'https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_images/5.jpg')

album6 = Album.create(name: Faker::Ancient.unique.titan, artist_id: artist6.id, release_yr: 2017, image_url: 'https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_images/6.jpg')

album7 = Album.create(name: Faker::Ancient.unique.titan, artist_id: artist7.id, release_yr: 2017, image_url: 'https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_images/7.jpg')

album8 = Album.create(name: Faker::Ancient.unique.titan, artist_id: artist8.id, release_yr: 2017, image_url: 'https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_images/8.png')

album9 = Album.create(name: Faker::Ancient.unique.titan, artist_id: artist9.id, release_yr: 2017, image_url: 'https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_images/9.jpg')

album10 = Album.create(name: Faker::Ancient.unique.titan, artist_id: artist10.id, release_yr: 2017, image_url: 'https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_images/10.jpg')

album11 = Album.create(name: Faker::Ancient.unique.titan, artist_id: artist11.id, release_yr: 2017, image_url: 'https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_images/11.png')

album12 = Album.create(name: Faker::Ancient.unique.titan, artist_id: artist12.id, release_yr: 2017, image_url: 'https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_images/12.jpg')

album13 = Album.create(name: Faker::Ancient.unique.titan, artist_id: artist13.id, release_yr: 2017, image_url: 'https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_images/13.png')

album14 = Album.create(name: Faker::Ancient.unique.titan, artist_id: artist14.id, release_yr: 2017, image_url: 'https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_images/14.png')


station1 = Station.create(name: Faker::Ancient.unique.hero, user_id: demo.id)
station2 = Station.create(name: Faker::Ancient.unique.hero, user_id: demo.id)
station3 = Station.create(name: Faker::Ancient.unique.hero, user_id: demo.id)
station4 = Station.create(name: Faker::Ancient.unique.titan, user_id: demo.id)
station5 = Station.create(name: Faker::Ancient.unique.titan, user_id: demo.id)
station6 = Station.create(name: "Emo", user_id: demo.id)

song1 = Song.create(name: "Kryptonite", album_id: album1.id, duration: 130, song_url: "https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_music/3doord.mp3")

song2 = Song.create(name: "Everytime We Touch", album_id: album2.id, duration: 130, song_url: "https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_music/casc.mp3")

song3 = Song.create(name: "Closer", album_id: album3.id, duration: 130, song_url: "https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_music/chnsmk.mp3")

song4 = Song.create(name: "Shape Of You", album_id: album4.id, duration: 130, song_url: "https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_music/ed.mp3")

song5 = Song.create(name: "Everlong", album_id: album5.id, duration: 130, song_url: "https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_music/evr.mp3")

song6 = Song.create(name: "Hey Ya!", album_id: album6.id, duration: 130, song_url: "https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_music/hya.mp3")

song7 = Song.create(name: "How You Remind Me", album_id: album7.id, duration: 130, song_url: "https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_music/nikl.mp3")

song8 = Song.create(name: "Never Forget You", album_id: album8.id, duration: 130, song_url: "https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_music/nvr.mp3")

song9 = Song.create(name: "Rather Be", album_id: album9.id, duration: 130, song_url: "https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_music/rthrb.mp3")

song10 = Song.create(name: "Run It!", album_id: album10.id, duration: 130, song_url: "https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_music/runnit.mp3")

song11 = Song.create(name: "Scare To Be Lonely - Remix", album_id: album11.id, duration: 130, song_url: "https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_music/scrd.mp3")

song12 = Song.create(name: "Sk8ter Boi", album_id: album12.id, duration: 130, song_url: "https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_music/sk8.mp3")

song13 = Song.create(name: "Symphony", album_id: album13.id, duration: 130, song_url: "https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_music/symph.mp3")

song14 = Song.create(name: "Toxic", album_id: album14.id, duration: 130, song_url: "https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_music/tox.mp3")


StationSong.create(song_id: song1.id, station_id: station1.id)
StationSong.create(song_id: song2.id, station_id: station1.id)
StationSong.create(song_id: song3.id, station_id: station1.id)
StationSong.create(song_id: song4.id, station_id: station1.id)
StationSong.create(song_id: song5.id, station_id: station1.id)
StationSong.create(song_id: song6.id, station_id: station1.id)
StationSong.create(song_id: song7.id, station_id: station1.id)
StationSong.create(song_id: song8.id, station_id: station1.id)
StationSong.create(song_id: song9.id, station_id: station1.id)
StationSong.create(song_id: song10.id, station_id: station1.id)
StationSong.create(song_id: song11.id, station_id: station1.id)
StationSong.create(song_id: song12.id, station_id: station1.id)
StationSong.create(song_id: song13.id, station_id: station1.id)
StationSong.create(song_id: song14.id, station_id: station1.id)

StationSong.create(song_id: song6.id, station_id: station2.id)
StationSong.create(song_id: song5.id, station_id: station2.id)
StationSong.create(song_id: song4.id, station_id: station2.id)
StationSong.create(song_id: song3.id, station_id: station2.id)
StationSong.create(song_id: song2.id, station_id: station2.id)
StationSong.create(song_id: song14.id, station_id: station2.id)
StationSong.create(song_id: song13.id, station_id: station2.id)
StationSong.create(song_id: song12.id, station_id: station2.id)
StationSong.create(song_id: song11.id, station_id: station2.id)
StationSong.create(song_id: song10.id, station_id: station2.id)
StationSong.create(song_id: song9.id, station_id: station2.id)
StationSong.create(song_id: song8.id, station_id: station2.id)
StationSong.create(song_id: song7.id, station_id: station2.id)

StationSong.create(song_id: song5.id, station_id: station3.id)
StationSong.create(song_id: song3.id, station_id: station3.id)
StationSong.create(song_id: song4.id, station_id: station3.id)
StationSong.create(song_id: song6.id, station_id: station3.id)
StationSong.create(song_id: song8.id, station_id: station3.id)
StationSong.create(song_id: song7.id, station_id: station3.id)
StationSong.create(song_id: song9.id, station_id: station3.id)
StationSong.create(song_id: song14.id, station_id: station3.id)
StationSong.create(song_id: song12.id, station_id: station3.id)
StationSong.create(song_id: song10.id, station_id: station3.id)
StationSong.create(song_id: song13.id, station_id: station3.id)
StationSong.create(song_id: song11.id, station_id: station3.id)

StationSong.create(song_id: song10.id, station_id: station4.id)
StationSong.create(song_id: song12.id, station_id: station4.id)
StationSong.create(song_id: song5.id, station_id: station4.id)
StationSong.create(song_id: song8.id, station_id: station4.id)
StationSong.create(song_id: song4.id, station_id: station4.id)
StationSong.create(song_id: song13.id, station_id: station4.id)
StationSong.create(song_id: song14.id, station_id: station4.id)
StationSong.create(song_id: song11.id, station_id: station4.id)
StationSong.create(song_id: song9.id, station_id: station4.id)

StationSong.create(song_id: song6.id, station_id: station5.id)
StationSong.create(song_id: song5.id, station_id: station5.id)
StationSong.create(song_id: song11.id, station_id: station5.id)
StationSong.create(song_id: song14.id, station_id: station5.id)
StationSong.create(song_id: song7.id, station_id: station5.id)
StationSong.create(song_id: song13.id, station_id: station5.id)
StationSong.create(song_id: song12.id, station_id: station5.id)
StationSong.create(song_id: song9.id, station_id: station5.id)
StationSong.create(song_id: song10.id, station_id: station5.id)
StationSong.create(song_id: song8.id, station_id: station5.id)

StationSong.create(song_id: song6.id, station_id: station6.id)
StationSong.create(song_id: song7.id, station_id: station6.id)
StationSong.create(song_id: song8.id, station_id: station6.id)
StationSong.create(song_id: song9.id, station_id: station6.id)
StationSong.create(song_id: song10.id, station_id: station6.id)
StationSong.create(song_id: song11.id, station_id: station6.id)
StationSong.create(song_id: song12.id, station_id: station6.id)
StationSong.create(song_id: song13.id, station_id: station6.id)
StationSong.create(song_id: song14.id, station_id: station6.id)
