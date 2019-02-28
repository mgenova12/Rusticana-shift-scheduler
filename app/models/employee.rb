class Employee < ApplicationRecord
  has_many :employee_roles
  has_many :roles, :through => :employee_roles

  has_many :schedules
  has_many :shift_times, :through => :schedules

end
