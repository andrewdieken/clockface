require 'rails_helper'

RSpec.describe Employee, type: :model do
  it { should belong_to :branch }
  it { should have_many :shifts }
end
