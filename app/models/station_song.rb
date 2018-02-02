class StationSong < ApplicationRecord
  validates :song_id, :station_id, presence: true

  belongs_to :song,
    primary_key: :id,
    foreign_key: :song_id,
    class_name: 'Song'

  belongs_to :station,
    primary_key: :id,
    foreign_key: :station_id,
    class_name: 'Station'
end
