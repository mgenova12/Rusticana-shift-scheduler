class Mutations::DeleteShiftTime < Mutations::BaseMutation
  
  argument :id, ID, required: true

  field :errors, [String], null: false

  def resolve(id:)
    
    shift_time = ShiftTime.find(id)
    shift_time.destroy
    
    {
      errors: []
    }
    
  end


end