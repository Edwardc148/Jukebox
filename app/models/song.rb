class Song < ApplicationRecord
  validates :name, :album_id, :duration, presence: true

  belongs_to :album,
    primary_key: :id,
    foreign_key: :album_id,
    class_name: 'Album'

  has_many :station_songs,
    primary_key: :id,
    foreign_key: :song_id,
    class_name: 'StationSong'

  has_many :stations,
    through: :station_songs,
    source: :station
end
