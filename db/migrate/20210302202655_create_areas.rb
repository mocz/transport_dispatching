class CreateAreas < ActiveRecord::Migration[6.1]
  def change
    create_table :areas do |t|
      t.string :town
      t.string :barangay
      t.integer :zone
      t.integer :km_distance
      t.float :fuel

      t.timestamps
    end
  end
end
