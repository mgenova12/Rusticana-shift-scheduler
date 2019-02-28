class Schedule < ApplicationRecord
  belongs_to :employee, optional: true
  belongs_to :shift_time, optional: true
  belongs_to :saved_schedule, optional: true
  belongs_to :role, optional: true
  
end
