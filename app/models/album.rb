class Album < ApplicationRecord
  validates :name, :artist_id, :release_yr, presence: true

  belongs_to :artist,
    primary_key: :id,
    foreign_key: :artist_id,
    class_name: 'Artist'

  has_many :songs,
    primary_key: :id,
    foreign_key: :album_id,
    class_name: 'Song'
end
