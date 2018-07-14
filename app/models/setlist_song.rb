class SetlistSong < ApplicationRecord
  belongs_to :setlist, counter_cache: :songs_count
  belongs_to :song, counter_cache: :setlists_count

  after_commit :adjust_counts

  default_scope { order('position ASC') }

  def adjust_counts
    new_practices_count = song.setlists.practices.size
    new_shows_count = song.setlists.shows.size

    song.update_attributes(
      practices_count: new_practices_count,
      shows_count: new_shows_count,
    )
  end
end
