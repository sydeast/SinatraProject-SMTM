class CreateLineupArtists < ActiveRecord::Migration[6.1]
  def change
    create_table :lineup_artists do |t|
      t.integer :artist_id, foreign_key: {to_table: 'artists'}
      t.integer :lineup_id, foreign_key: {to_table: 'lineups'}
    end
  end
end
