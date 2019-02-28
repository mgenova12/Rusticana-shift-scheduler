module Types
  class RoleType < Types::BaseObject
    field :id, ID, null: true
    field :title, String, null: true
    field :checked, Boolean, null: true
    field :schedules, [ScheduleType], null:true
  end
end