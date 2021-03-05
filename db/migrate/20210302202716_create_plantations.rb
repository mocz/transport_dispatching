class CreatePlantations < ActiveRecord::Migration[6.1]
  def change
    create_table :plantations do |t|
      t.string :name
      t.string :description
      t.decimal :coordinates
      t.references :area, null: false, foreign_key: true
      t.references :planter, null: false, foreign_key: true

      t.timestamps
    end
  end
end
