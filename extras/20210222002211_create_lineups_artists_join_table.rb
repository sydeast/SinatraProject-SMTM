class CreateLineupsArtistsJoinTable < ActiveRecord::Migration[5.2]
def change
    create_table :artists_lineups, id: false do |t|
      t.bigint :lineup_id
      t.bigint :artist_id
    end

    add_index :artists_lineups, :lineup_id
    add_index :artists_lineups, :artist_id
  end
end
