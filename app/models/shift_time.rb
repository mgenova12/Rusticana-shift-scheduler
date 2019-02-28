class ShiftTime < ApplicationRecord

  has_many :schedules
  has_many :employees, :through => :schedules

end
