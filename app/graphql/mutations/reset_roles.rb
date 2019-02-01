class Mutations::ResetRoles < Mutations::BaseMutation

  # field :role, Types::RoleType, null: false
  field :errors, [String], null: false

  def resolve
    Role.update_all(checked: false)
    
    {
      errors: []
    }

  end


end