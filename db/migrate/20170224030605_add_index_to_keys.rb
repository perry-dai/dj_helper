class AddIndexToKeys < ActiveRecord::Migration
  def change
    add_index :keys, :musical_key
  end
end
