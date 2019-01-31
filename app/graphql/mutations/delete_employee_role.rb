class Mutations::DeleteEmployeeRole < Mutations::BaseMutation
  argument :employee_id, Integer, required: true
  argument :role_id, Integer, required: true

  field :employee_role, Types::EmployeeRoleType, null: false
  field :errors, [String], null: false

  def resolve(employee_id:, role_id:)
    employee_role = EmployeeRole.find_by(employee_id: employee_id, role_id: role_id)
    
    employee_role.destroy
    
    {
      employee_role: employee_role,
      errors: []
    }
  end


end