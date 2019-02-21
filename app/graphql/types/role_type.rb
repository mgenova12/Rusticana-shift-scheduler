module Types
  class RoleType < Types::BaseObject
    field :id, ID, null: true
    field :title, String, null: true
    field :checked, Boolean, null: true
  end
end