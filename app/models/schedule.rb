class Schedule < ApplicationRecord
  belongs_to :employee, optional: true
end
