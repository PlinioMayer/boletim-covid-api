class RemoveTypeFromTest < ActiveRecord::Migration[6.0]
  def change
    remove_column :tests, :type, :string
  end
end
