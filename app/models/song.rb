class Song < ApplicationRecord
  has_many :setlist_songs, dependent: :destroy
  has_many :setlists, through: :setlist_songs

  has_many_attached :audios

  validates :name, presence: true
end
