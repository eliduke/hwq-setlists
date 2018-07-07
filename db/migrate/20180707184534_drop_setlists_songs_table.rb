class DropSetlistsSongsTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :setlists_songs
  end
end
