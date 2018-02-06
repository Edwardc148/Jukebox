# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# user1 = User.create(email: "demo@gmail.com", name: "Demo", )

User.destroy_all
Station.destroy_all
Artist.destroy_all
Album.destroy_all
Song.destroy_all
StationSong.destroy_all

demo = User.create(name: "Demo", email: "demo@gmail.com", password: "password")

artist1 = Artist.create(name: "Demo Artist", description: "This is a demo description")

album1 = Album.create(name: "Nature Album", artist_id: artist1.id, release_yr: 2018, image_url: 'https://i.imgur.com/sduLRvf.jpg')

album2 = Album.create(name: "Forest Album", artist_id: artist1.id, release_yr: 2017, image_url: 'https://i.imgur.com/tXtwrPd.jpg')

album3 = Album.create(name: "Raindrops Album", artist_id: artist1.id, release_yr: 2017, image_url: 'https://i.imgur.com/IVyU5Im.jpg')

album4 = Album.create(name: "Epic Album", artist_id: artist1.id, release_yr: 2017, image_url: 'https://i.imgur.com/QguApMA.jpg')

album5 = Album.create(name: "Heavy Metal Album", artist_id: artist1.id, release_yr: 2017, image_url: 'https://i.imgur.com/Gb6xVGP.jpg')

album6 = Album.create(name: "Emo Album", artist_id: artist1.id, release_yr: 2017, image_url: 'https://i.imgur.com/PnSeZX3.jpg')

station1 = Station.create(name: "Nature", user_id: demo.id)
station2 = Station.create(name: "Forest", user_id: demo.id)
station3 = Station.create(name: "Raindrops", user_id: demo.id)
station4 = Station.create(name: "Epic", user_id: demo.id)
station5 = Station.create(name: "Heavy Metal", user_id: demo.id)
station6 = Station.create(name: "Emo", user_id: demo.id)

song1 = Song.create(name: "Song1", album_id: album1.id, duration: 130, song_url: "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3")
song2 = Song.create(name: "Song2", album_id: album2.id, duration: 130, song_url: "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-2.mp3")
song3 = Song.create(name: "Song3", album_id: album3.id, duration: 130, song_url: "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-3.mp3")
song4 = Song.create(name: "Song4", album_id: album4.id, duration: 130, song_url: "http://cdn.mos.musicradar.com/audio/samples/dubstep-demo-loops/DS_DubPad145G-01.mp3")
song5 = Song.create(name: "Song5", album_id: album5.id, duration: 130, song_url: "http://cdn.mos.musicradar.com/audio/samples/dubstep-demo-loops/DS_BeatF145-01.mp3")
song6 = Song.create(name: "Song6", album_id: album6.id, duration: 130, song_url: "http://cdn.mos.musicradar.com/audio/samples/dubstep-demo-loops/DS_Fizzer140C-05.mp3")

StationSong.create(song_id: song1.id, station_id: station1.id)
StationSong.create(song_id: song2.id, station_id: station1.id)
StationSong.create(song_id: song3.id, station_id: station1.id)
StationSong.create(song_id: song4.id, station_id: station1.id)
StationSong.create(song_id: song5.id, station_id: station1.id)
StationSong.create(song_id: song6.id, station_id: station1.id)

StationSong.create(song_id: song6.id, station_id: station2.id)
StationSong.create(song_id: song5.id, station_id: station2.id)
StationSong.create(song_id: song4.id, station_id: station2.id)
StationSong.create(song_id: song3.id, station_id: station2.id)
StationSong.create(song_id: song2.id, station_id: station2.id)

StationSong.create(song_id: song5.id, station_id: station3.id)
StationSong.create(song_id: song3.id, station_id: station3.id)
StationSong.create(song_id: song4.id, station_id: station3.id)
StationSong.create(song_id: song6.id, station_id: station3.id)

StationSong.create(song_id: song4.id, station_id: station4.id)
StationSong.create(song_id: song2.id, station_id: station4.id)
StationSong.create(song_id: song5.id, station_id: station4.id)

StationSong.create(song_id: song6.id, station_id: station5.id)
StationSong.create(song_id: song5.id, station_id: station5.id)

StationSong.create(song_id: song4.id, station_id: station6.id)
StationSong.create(song_id: song3.id, station_id: station6.id)
