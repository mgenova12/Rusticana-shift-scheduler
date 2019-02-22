class Mutations::CreateShiftTime < Mutations::BaseMutation
  argument :time, String, required: true

  field :shift_time, Types::ShiftTimeType, null: false
  field :errors, [String], null: false

  def resolve(time:)
    shift_time = ShiftTime.new(time: time)
    
    if shift_time.save
      # Successful creation, return the created object with no errors
      {
        shift_time: shift_time,
        errors: [],
      }
    else
      # Failed save, return the errors to the client
      {
        shift_time: nil,
        errors: shift_time.errors.full_messages
      }
    end
  end


end