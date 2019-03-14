module Types
  class ScheduleType < Types::BaseObject
    field :id, ID, null: false
    field :day, String, null: true
    field :time_of_day, String, null: true
    field :saved_schedule_id, ID, null: true

    field :employee_id, ID, null: true
    field :shift_time_id, ID, null: true
    field :role_id, ID, null: true
    
    field :employee, EmployeeType, null: true
    field :shift_time, ShiftTimeType, null: true
    field :role, RoleType, null: true

  end
end