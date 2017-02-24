class AddIndexToArtists < ActiveRecord::Migration
  def change
    add_index :artists, :name
  end
end
