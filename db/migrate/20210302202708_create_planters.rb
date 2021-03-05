class CreatePlanters < ActiveRecord::Migration[6.1]
  def change
    create_table :planters do |t|
      t.string :name
      t.string :address
      t.string :contact_no

      t.timestamps
    end
  end
end
