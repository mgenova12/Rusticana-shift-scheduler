class Mutations::CreateSchedule < Mutations::BaseMutation
  
  argument :day, String, required: true
  argument :time_of_day, String, required: true
  argument :schedule_type, String, required: true

  field :schedule, Types::ScheduleType, null: false
  field :errors, [String], null: false

  def resolve(day:, time_of_day:, schedule_type:)
    schedule = Schedule.new(day: day, time_of_day: time_of_day, schedule_type: schedule_type)

    if schedule.save
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