require 'rails_helper'

RSpec.describe RegionalManager, type: :model do
  it { should have_many :branches }
end
