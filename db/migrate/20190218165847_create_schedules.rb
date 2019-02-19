class CreateSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :schedules do |t|
      t.string :day
      t.integer :employee_id
      t.integer :time_id
      t.string :time_of_day

      t.timestamps
    end
  end
end
