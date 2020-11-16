class CreatePeople < ActiveRecord::Migration[6.0]
  def change
    create_table :people do |t|
      t.string :cpf
      t.string :name
      t.string :gender
      t.string :race
      t.date :birthdate
      t.references :city, null: false, foreign_key: true
      t.references :case, null: false, foreign_key: true

      t.timestamps
    end
  end
end
