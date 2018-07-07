class AddPositionToSetlistsSongs < ActiveRecord::Migration[5.2]
  def change
    add_column :setlists_songs, :position, :integer, null: false, default: 0
  end
end
