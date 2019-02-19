module Types
  class ScheduleType < Types::BaseObject
    field :id, ID, null: false
    field :day, String, null: true
    field :time_of_day, String, null: true
    field :employee_id, ID, null: true
    field :time_id, ID, null: true
  end
end