class Mutations::DeleteShift < Mutations::BaseMutation
  
  argument :id, ID, required: true

  # field :schedule, Types::ScheduleType, null: false
  field :errors, [String], null: false

  def resolve(id:)
    shift = Schedule.find(id)
    shift.destroy
    
    {
      errors: []
    }
    
  end


end