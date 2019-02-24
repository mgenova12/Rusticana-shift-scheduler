class CreateSavedSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :saved_schedules do |t|
      t.string :status

      t.timestamps
    end
  end
end
