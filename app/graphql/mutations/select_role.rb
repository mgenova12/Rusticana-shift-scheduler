class Mutations::SelectRole < Mutations::BaseMutation
  argument :id, ID, required: true
  argument :checked, Boolean, required: true

  field :role, Types::RoleType, null: false
  field :errors, [String], null: false

  def resolve(id:, checked:)
    role = Role.find(id)
    
    if role.update(checked: checked)
      # Successful creation, return the created object with no errors
      {
        role: role,
        errors: [],
      }
    else
      # Failed save, return the errors to the client
      {
        role: nil,
        errors: role.errors.full_messages
      }
    end
  end


end