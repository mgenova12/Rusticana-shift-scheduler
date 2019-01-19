
class EmployeeRoleType < GraphQL::Schema::Object
  field :id, ID, null: true
  field :employee_id, Integer, null: true
  field :role_id, Integer, null: true
end