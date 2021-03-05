class CreateDispatches < ActiveRecord::Migration[6.1]
  def change
    create_table :dispatches do |t|
      t.string :status
      t.string :description
      t.timestamp :time_arrived
      t.references :driver, null: false, foreign_key: true
      t.references :plantation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
