class CreateThrus < ActiveRecord::Migration[4.2]
    def change
        create_table :thrus do |t|
            t.integer :lineup_id
            t.integer :artist_id
        end
    end
end
