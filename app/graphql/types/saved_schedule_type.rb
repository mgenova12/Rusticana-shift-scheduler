module Types
  class SavedScheduleType < Types::BaseObject
    field :id, ID, null: false
    field :created_at, String, null: false
  end
end