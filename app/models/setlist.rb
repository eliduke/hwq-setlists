class Setlist < ApplicationRecord
  has_many :setlist_songs
  has_many :songs, through: :setlist_songs

  validates :name, :songs, presence: true

  def type
    practice? ? "Practice" : "Show"
  end

  def songs_for_form
    song_list = []
    song_list += songs
    song_list += Song.all.order(:name) - songs
    song_list
  end
end
