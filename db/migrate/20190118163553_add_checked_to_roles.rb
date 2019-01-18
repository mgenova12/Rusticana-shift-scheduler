class AddCheckedToRoles < ActiveRecord::Migration[5.0]
  def change
    add_column :roles, :checked, :boolean
  end
end
