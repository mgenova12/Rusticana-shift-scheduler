class ChangeTimeColumnToString < ActiveRecord::Migration[5.0]
  def change
    change_column :shift_times, :time, :string
  end
end
