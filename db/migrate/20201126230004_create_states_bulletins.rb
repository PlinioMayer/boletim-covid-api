class CreateStatesBulletins < ActiveRecord::Migration[6.0]
  def change
    create_view :states_bulletins
  end
end
