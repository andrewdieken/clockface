class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  belongs_to :branch
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
