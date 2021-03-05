class CreateTrucks < ActiveRecord::Migration[6.1]
  def change
    create_table :trucks do |t|
      t.string :name
      t.string :description
      t.string :status

      t.timestamps
    end
  end
end
