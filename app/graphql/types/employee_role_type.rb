module Types
  class EmployeeRoleType < Types::BaseObject
    field :id, ID, null: false
    field :role_id, Integer, null: true
    field :employee_id, Integer, null: true
  end
end