class Schedule < ApplicationRecord
  belongs_to :employee, optional: true
  belongs_to :shift_time, optional: true
end
