class Mutations::EditEmployeeName < Mutations::BaseMutation
  argument :employee_id, Integer, required: true
  argument :name, String, required: true

  field :employee, Types::EmployeeType, null: false
  field :errors, [String], null: false

  def resolve(employee_id:, name:)
    employee = Employee.find(employee_id)
    
    if employee.update(name: name)
      # Successful creation, return the created object with no errors
      {
        employee: employee,
        errors: [],
      }
    else
      # Failed save, return the errors to the client
      {
        employee: nil,
        errors: employee.errors.full_messages
      }
    end
  end


end