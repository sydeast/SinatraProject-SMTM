class CreateLineups < ActiveRecord::Migration[4.2]
    def change
        create_table :lineups do |t|
            t.integer :user_id
            t.string :name
            t.integer :artist_id
        end
    end
end
