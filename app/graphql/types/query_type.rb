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
      Employee.all.order(:created_at).reverse
    end
    
    field :schedules, [Types::ScheduleType], null: false do 
      argument :schedule_type, String, required: true
    end

    def schedules(schedule_type:)
      Schedule.where(schedule_type: schedule_type)
    end

    field :role_employees, [Types::EmployeeType], null: false do 
      argument :title, String, required: true
    end
    
    def role_employees(title:)
      Role.find_by(title: title).employees
    end

  end
end
