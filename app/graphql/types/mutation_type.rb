module Types
  class MutationType < Types::BaseObject

    field :create_employee, mutation: Mutations::CreateEmployee
    field :create_employee_role, mutation: Mutations::CreateEmployeeRole
    field :select_role, mutation: Mutations::SelectRole
    field :delete_employee_role, mutation: Mutations::DeleteEmployeeRole
    field :reset_roles, mutation: Mutations::ResetRoles

  end
end
