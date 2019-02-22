module Types
  class ShiftTimeType < Types::BaseObject
    field :id, ID, null: false
    field :time, String, null: false
  end
end