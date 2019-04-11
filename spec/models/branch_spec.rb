require 'rails_helper'

RSpec.describe Branch, type: :model do
  it { should belong_to :regional_manager }
end
