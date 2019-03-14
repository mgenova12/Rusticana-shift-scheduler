module Types
  class FinalScheduleType < Types::BaseObject
    field :id, ID, null: true
    field :day, String, null: true
    field :shift_time, ShiftTimeType, null: true
  end
end