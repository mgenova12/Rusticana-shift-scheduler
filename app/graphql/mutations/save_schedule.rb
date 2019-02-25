class Mutations::SaveSchedule < Mutations::BaseMutation

  field :schedule, Types::ScheduleType, null: false
  field :errors, [String], null: false


  def resolve
    schedule = Schedule.where(saved_schedule_id: nil)

    if !schedule.empty?
      saved_schedule = SavedSchedule.create(status: 'Saved')
      
      schedule.each do |shift| 
        Schedule.create(
          day: shift.day, 
          time_of_day: shift.time_of_day, 
          shift_time_id: shift.shift_time_id,
          employee_id: shift.employee_id,
          schedule_type: shift.schedule_type,
          saved_schedule_id: saved_schedule.id,
        )
      end
    
    end

    {
      errors: []
    }
    
  end


end