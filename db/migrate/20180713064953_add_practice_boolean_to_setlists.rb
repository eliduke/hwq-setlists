class AddPracticeBooleanToSetlists < ActiveRecord::Migration[5.2]
  def change
    add_column :setlists, :practice, :boolean, default: true
  end
end
