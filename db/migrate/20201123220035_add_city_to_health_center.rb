class AddCityToHealthCenter < ActiveRecord::Migration[6.0]
  def change
    add_reference :health_centers, :city, null: false, foreign_key: true
  end
end
