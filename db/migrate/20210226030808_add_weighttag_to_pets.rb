class AddWeighttagToPets < ActiveRecord::Migration[5.2]
  def change
    add_column :pets, :wunits, :text
  end
end
