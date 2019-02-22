module Types
  class MutationType < Types::BaseObject

    field :create_employee, mutation: Mutations::CreateEmployee
    field :create_employee_role, mutation: Mutations::CreateEmployeeRole
    field :select_role, mutation: Mutations::SelectRole
    field :delete_employee_role, mutation: Mutations::DeleteEmployeeRole
    field :reset_roles, mutation: Mutations::ResetRoles
    field :delete_employee, mutation: Mutations::DeleteEmployee
    field :edit_employee_name, mutation: Mutations::EditEmployeeName
    field :create_schedule, mutation: Mutations::CreateSchedule
    field :delete_shift, mutation: Mutations::DeleteShift
    field :update_employee_schedule, mutation: Mutations::UpdateEmployeeSchedule
    field :create_shift_time, mutation: Mutations::CreateShiftTime
  end
end
