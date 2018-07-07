class Song < ApplicationRecord
  has_many :setlist_songs
  has_many :setlists, through: :setlist_songs

  validates :name, presence: true
end
