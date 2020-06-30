class CreateSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :sessions do |t|
      t.integer :instrument_id
      t.integer :artist_id
      t.string :session_type

      t.timestamps
    end
  end
end
