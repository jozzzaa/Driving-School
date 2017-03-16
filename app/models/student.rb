class Student < ApplicationRecord
  has_many :appointments
  mas_many :instructors, through :appointments
end
