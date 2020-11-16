class CreateDoctors < ActiveRecord::Migration[6.0]
  def change
    create_table :doctors do |t|
      t.string :registration
      t.string :name
      t.date :birthdadte
      t.date :registration_date
      t.references :health_center, null: false, foreign_key: true

      t.timestamps
    end
  end
end
