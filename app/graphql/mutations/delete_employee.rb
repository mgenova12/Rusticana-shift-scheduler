class Mutations::DeleteEmployee < Mutations::BaseMutation
  argument :id, ID, required: true

  # field :employee, Types::EmployeeType, null: false
  field :errors, [String], null: false

  def resolve(id:)
    employee = Employee.find(id)
    employee.destroy
    employees = EmployeeRole.where(employee_id: id)
    employees.destroy_all
    
    {
      errors: []
    }

    
  end


end