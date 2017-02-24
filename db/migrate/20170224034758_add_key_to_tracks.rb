class AddKeyToTracks < ActiveRecord::Migration
  def change
    add_reference :tracks, :key, index: true
  end
end
