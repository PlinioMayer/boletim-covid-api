class CreateBeds < ActiveRecord::Migration[6.0]
  def change
    create_table :beds do |t|
      t.references :person, null: false, foreign_key: true
      t.references :health_center, null: false, foreign_key: true

      t.timestamps
    end
  end
end
