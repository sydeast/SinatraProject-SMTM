class CreateArtists < ActiveRecord::Migration[4.2]
    def change
        create_table :artists do |t|
            t.string :name
            t.string :season
            t.string :placed
            t.string :photo_url
            t.string :profile_url
            t.boolean :read_only
        end
    end
end
