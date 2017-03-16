class Instructor < ApplicationRecord
  has_many :appointments
  mas_many :students, through :appointments
  has_and_belongs_to_many :locations
end
