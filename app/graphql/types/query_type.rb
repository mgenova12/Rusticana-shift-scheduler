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
      Schedule.where(schedule_type: schedule_type, saved_schedule_id: nil)
    end

    field :role_employees, [Types::EmployeeType], null: false do 
      argument :title, String, required: true
    end
    
    def role_employees(title:)
      Role.find_by(title: title).employees
    end

    field :shift_times, [Types::ShiftTimeType], null: false

    def shift_times 
      ShiftTime.all.reverse
    end

    field :saved_schedules, [Types::SavedScheduleType], null: false

    def saved_schedules
      SavedSchedule.all.reverse
    end

  end
end
