class CreateShiftTimes < ActiveRecord::Migration[5.0]
  def change
    create_table :shift_times do |t|
      t.time :time

      t.timestamps
    end
  end
end
