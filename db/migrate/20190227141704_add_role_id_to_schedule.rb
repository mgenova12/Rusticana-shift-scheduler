class AddRoleIdToSchedule < ActiveRecord::Migration[5.0]
  def change
    add_column :schedules, :role_id, :integer
  end
end
