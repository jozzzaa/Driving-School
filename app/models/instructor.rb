class Instructor < ApplicationRecord
  has_many :appointments
  has_many :students, through: :appointments
  has_and_belongs_to_many :locations
end
