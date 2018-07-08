class AddCounterCacheFields < ActiveRecord::Migration[5.2]
  def change
    add_column :setlists, :songs_count, :integer, default: 0
    add_column :songs, :setlists_count, :integer, default: 0
  end
end
