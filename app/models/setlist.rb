class Setlist < ApplicationRecord
  has_many :setlist_songs, dependent: :destroy
  has_many :songs, through: :setlist_songs

  validates :name, :songs, presence: true

  def self.practices
    where(practice: true)
  end

  def self.shows
    where(practice: false)
  end

  def songs_for_form
    song_list = []
    song_list += songs
    song_list += Song.all.order(:name) - songs
    song_list
  end

  def type
    practice? ? "Practice" : "Show"
  end
end
