class Appointment < ApplicationRecord
  belongs_to :student, optional: true
  belongs_to :instructor, optional: true
end
