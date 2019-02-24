class AddSecondTimeToShiftTimes < ActiveRecord::Migration[5.0]
  def change
    add_column :shift_times, :end_time, :datetime
    remove_column :shift_times, :time, :string
    add_column :shift_times, :start_time, :datetime
  end
end
