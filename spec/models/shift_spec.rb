require 'rails_helper'

RSpec.describe Shift, type: :model do
  it { should belong_to :employee }
  it { should have_many :interims }
end
