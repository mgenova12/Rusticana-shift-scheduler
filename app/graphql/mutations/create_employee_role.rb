class Mutations::CreateEmployeeRole < Mutations::BaseMutation
  argument :employee_id, Integer, required: true
  argument :role_id, Integer, required: true

  field :employee_role, Types::EmployeeRoleType, null: false
  field :errors, [String], null: false

  def resolve(employee_id:, role_id:)
    employee_role = EmployeeRole.new(employee_id: employee_id, role_id: role_id)
    
    if employee_role.save
      # Successful creation, return the created object with no errors
      {
        employee_role: employee_role,
        errors: [],
      }
    else
      # Failed save, return the errors to the client
      {
        employee_role: nil,
        errors: employee_role.errors.full_messages
      }
    end
  end


end