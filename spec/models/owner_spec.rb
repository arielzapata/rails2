require 'rails_helper'

RSpec.describe Owner, type: :model do
  let!(:owner){FactoryBot.create(:owner)}

  describe 'valid fields' do
    it "attributes are allowed" do 
      expect(owner).to be_valid
    end
  end
  describe "Associations" do 
    it { should have_many(:homes) }
  end
  describe "Validate associations belongs to user" do
   it { is_expected.to validate_presence_of(:user) }
 end
end