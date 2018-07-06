class CreateSetlistsSongsJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_table :setlists_songs, id: false do |t|
      t.belongs_to :setlist, index: true
      t.belongs_to :song, index: true
    end
  end
end
