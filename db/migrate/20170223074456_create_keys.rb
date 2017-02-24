class CreateKeys < ActiveRecord::Migration
  def change
    create_table :keys do |t|
      t.string :camelot_key, null: false
      t.string :musical_key, null: false
      t.timestamps
    end
    add_index :keys, :camelot_key
  end
end
