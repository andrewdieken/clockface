class Branch < ApplicationRecord
  belongs_to :regional_manager
  has_many :users
  has_many :employees
end
