require 'rails_helper'

RSpec.describe Employee, type: :model do
  it { should belong_to :branch }
  it { should have_many :shifts }
  let (:branch) { create(:branch) }

  describe "#full_name" do
    it 'appends last_name to first_name' do
      employee = create(:employee, first_name: 'John', last_name: 'Wick', branch: branch)

      expect(employee.full_name).to eq 'John Wick'
    end
  end
end
