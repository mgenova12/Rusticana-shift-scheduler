class CreateEmployeeRoles < ActiveRecord::Migration[5.0]
  def change
    create_table :employee_roles do |t|
      t.integer :employee_id
      t.string :role_id
      t.string :integer

      t.timestamps
    end
  end
end
