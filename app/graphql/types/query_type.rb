module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :roles, [Types::RoleType], null: false

    def roles
      Role.order(:title)
    end   

    field :employees, [Types::EmployeeType], null: false

    def employees
      Employee.all.reverse
    end

  end
end
