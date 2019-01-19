module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :test_field, String, null: false,
      description: "An example field added by the generator"
    
    def test_field
      "Hello World!"
    end


    field :employee_roles, [EmployeeRoleType], null: true do
      description "gets all employee_roles"
    end

    def employee_roles
      EmployeeRole.all
    end

  end
end
