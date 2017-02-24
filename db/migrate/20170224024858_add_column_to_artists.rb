class AddColumnToArtists < ActiveRecord::Migration
  def change
    add_timestamps(:artists)
  end
end
