require 'rails_helper'

RSpec.describe Interim, type: :model do
  it { should belong_to :shift }
end
