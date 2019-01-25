class Mutations::CreateEmployee < Mutations::BaseMutation
  argument :name, String, required: true

  field :employee, Types::EmployeeType, null: false
  field :errors, [String], null: false

  def resolve(name:)
    employee = Employee.new(name: name)
    
    if employee.save
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