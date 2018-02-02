class Station < ApplicationRecord
  validates :name, :user_id, presence: true

  belongs_to :user,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: 'User'

  has_many :station_songs,
    primary_key: :id,
    foreign_key: :station_id,
    class_name: 'StationSong'

  has_many :songs,
    through: :station_songs,
    source: :song
end
