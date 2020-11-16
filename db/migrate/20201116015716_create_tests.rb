class CreateTests < ActiveRecord::Migration[6.0]
  def change
    create_table :tests do |t|
      t.integer :result
      t.string :type
      t.references :person, null: false, foreign_key: true

      t.timestamps
    end
  end
end
