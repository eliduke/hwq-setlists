class CreateSetlists < ActiveRecord::Migration[5.2]
  def change
    create_table :setlists do |t|
      t.string :name
      t.text :notes

      t.timestamps
    end
  end
end
