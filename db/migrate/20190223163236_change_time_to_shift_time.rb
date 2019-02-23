class ChangeTimeToShiftTime < ActiveRecord::Migration[5.0]
  def change
    rename_column :schedules, :time_id, :shift_time_id
  end
end
