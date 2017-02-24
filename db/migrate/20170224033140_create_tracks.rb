class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :title, null: false
      t.string :artist_name, null: false
      t.string :remixed_by
      t.string :camelot_key
      t.string :musical_key
      t.string :genre
      t.string :record_label
      t.timestamps
    end
    add_index :tracks, :title
    add_index :tracks, :artist_name
    add_index :tracks, :camelot_key
    add_index :tracks, :genre
    add_index :tracks, :record_label
  end
end
