class Employee < ApplicationRecord
  belongs_to :branch
  has_many :shifts
end
