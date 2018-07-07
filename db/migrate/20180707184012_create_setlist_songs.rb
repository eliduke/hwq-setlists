class CreateSetlistSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :setlist_songs do |t|
      t.belongs_to :setlist, index: true
      t.belongs_to :song, index: true
      t.integer :position

      t.timestamps
    end
  end
end
