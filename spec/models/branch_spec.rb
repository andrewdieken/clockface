require 'rails_helper'

RSpec.describe Branch, type: :model do
  it { should have_many :users }
  it { should have_many :employees }
end
