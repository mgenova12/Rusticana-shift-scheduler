class RemoveIntegerAndMakeRoleIdInteger < ActiveRecord::Migration[5.0]
  def change
    change_column :employee_roles, :role_id, 'integer USING CAST(role_id AS integer)'
    remove_column :employee_roles, :integer, :string
  end
end
