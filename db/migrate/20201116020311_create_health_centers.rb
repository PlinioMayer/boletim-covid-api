class CreateHealthCenters < ActiveRecord::Migration[6.0]
  def change
    create_table :health_centers do |t|
      t.integer :total
      t.integer :occupied
      t.string :address

      t.timestamps
    end
  end
end
