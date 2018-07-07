class SetlistSong < ApplicationRecord
  belongs_to :setlist
  belongs_to :song

  default_scope { order('position ASC') }
end
