class CreateEmergencialSupports < ActiveRecord::Migration[6.0]
  def change
    create_table :emergencial_supports do |t|
      t.float :value
      t.date :date
      t.references :person, null: false, foreign_key: true

      t.timestamps
    end
  end
end
