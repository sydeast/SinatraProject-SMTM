class AddReferencesLineupsTable < ActiveRecord::Migration[5.2]
  def change
    add_index :lineups, :pick1_id
    add_index :lineups, :pick2_id
    add_index :lineups, :pick3_id
    add_index :lineups, :pick4_id
    add_foreign_key :lineups, :artists, column: :pick1_id
    add_foreign_key :lineups, :artists, column: :pick2_id
    add_foreign_key :lineups, :artists, column: :pick3_id
    add_foreign_key :lineups, :artists, column: :pick4_id
  end
end
