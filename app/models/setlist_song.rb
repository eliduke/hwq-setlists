class SetlistSong < ApplicationRecord
  belongs_to :setlist, counter_cache: :songs_count
  belongs_to :song, counter_cache: :setlists_count

  default_scope { order('position ASC') }
end
