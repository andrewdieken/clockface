class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: [ :regional_manager, :branch_manager ]

  belongs_to :branch, optional: true

  validates :role, presence: true
end
