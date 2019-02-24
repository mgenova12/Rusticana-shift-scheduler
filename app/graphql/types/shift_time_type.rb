module Types
  class ShiftTimeType < Types::BaseObject
    field :id, ID, null: false
    field :start_time, String, null: false
    field :end_time, String, null: false
  end
end