module Types
  class RoleType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: true
  end
end