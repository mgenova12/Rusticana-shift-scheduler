class AddSavedScheduleIdToSchedule < ActiveRecord::Migration[5.0]
  def change
    add_column :schedules, :saved_schedule_id, :integer
  end
end
