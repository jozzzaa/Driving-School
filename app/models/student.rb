class Student < ApplicationRecord
  has_many :appointments
  has_many :instructors, through: :appointments
end
