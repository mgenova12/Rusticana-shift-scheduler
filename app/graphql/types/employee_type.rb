module Types
  class EmployeeType < Types::BaseObject
    field :id, ID, null: true
    field :name, String, null: true
    field :roles, [RoleType], null: true
  end
end