class Mutations::UpdateShiftTimeSchedule < Mutations::BaseMutation
  argument :id, ID, required: true
  argument :shift_time_id, ID, required: true

  field :schedule, Types::ScheduleType, null: false
  field :errors, [String], null: false

  def resolve(id:, shift_time_id:)
    
    schedule = Schedule.find(id)

    if schedule.update(shift_time_id: shift_time_id)
      # Successful creation, return the created object with no errors
      {
        schedule: schedule,
        errors: [],
      }
    else
      # Failed save, return the errors to the client
      {
        schedule: nil,
        errors: schedule.errors.full_messages
      }
    end
  end


end