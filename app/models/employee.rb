class Employee < ApplicationRecord
  belongs_to :branch
  has_many :shifts

  def full_name
    [first_name, last_name].join(" ")
  end
end
