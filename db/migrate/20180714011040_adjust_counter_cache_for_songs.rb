class AdjustCounterCacheForSongs < ActiveRecord::Migration[5.2]
  def change
    add_column :songs, :shows_count, :integer, default: 0
    add_column :songs, :practices_count, :integer, default: 0
  end
end
