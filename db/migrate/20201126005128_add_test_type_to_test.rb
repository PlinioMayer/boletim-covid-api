class AddTestTypeToTest < ActiveRecord::Migration[6.0]
  def change
    add_column :tests, :testtype, :string
  end
end
