module Types
  class EmployeeType < Types::BaseObject
    field :id, ID, null: true
    field :name, String, null: true
    field :roles, [RoleType], null: true
    field :shift_times, [ShiftTimeType], null: true
    field :schedules, [ScheduleType], null:true
  end
end