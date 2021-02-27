class CreatePets < ActiveRecord::Migration[4.2]
    def change
        create_table :pets do |t|
            t.integer :user_id
            t.string :name
            t.integer :age
            t.string :type
            t.string :breed
            t.string :gender
            t.boolean :neutered_spayed
            t.string :medical_conditions
            t.integer :weight

        end

    end
end
