class CreateArtists < ActiveRecord::Migration[4.2]
    def change
        create_table :artists do |t|
            t.string :name
            t.boolean :previous_contestant
            t.string :photo_url
            t.boolean :read_only
        end
    end
end
