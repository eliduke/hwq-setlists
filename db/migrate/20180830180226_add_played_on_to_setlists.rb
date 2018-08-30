class AddPlayedOnToSetlists < ActiveRecord::Migration[5.2]
  def change
    add_column :setlists, :played_on, :datetime
  end
end
