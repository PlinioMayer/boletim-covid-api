class AddNameToHealthCenter < ActiveRecord::Migration[6.0]
  def change
    add_column :health_centers, :name, :string
  end
end
