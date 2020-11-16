class CreatePeopleRiskGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :people_risk_groups do |t|
      t.references :person, null: false, foreign_key: true
      t.references :risk_group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
