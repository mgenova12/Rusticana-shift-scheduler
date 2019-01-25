module Types
  class MutationType < Types::BaseObject

    field :create_employee, mutation: Mutations::CreateEmployee
    field :create_employee_role, mutation: Mutations::CreateEmployeeRole

  end
end
