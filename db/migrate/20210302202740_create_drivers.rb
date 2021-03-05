class CreateDrivers < ActiveRecord::Migration[6.1]
  def change
    create_table :drivers do |t|
      t.string :name
      t.string :affiliation
      t.string :address
      t.date :date_employed
      t.string :contact_no
      t.references :truck, null: false, foreign_key: true

      t.timestamps
    end
  end
end
