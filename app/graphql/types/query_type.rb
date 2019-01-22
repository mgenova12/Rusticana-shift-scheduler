module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :roles, [Types::RoleType], null: false

    def roles
      Role.all
    end   

    field :employees, [Types::EmployeeType], null: false

    def employees
      Employee.all
    end


  end
end
