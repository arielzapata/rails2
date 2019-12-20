require 'rails_helper'

RSpec.describe Home, type: :model do
  let!(:home){FactoryBot.create(:home)}

  describe 'Values fields' do
    it "model have allowed attributes" do 
      expect(home).to be_valid
    end  
  end
  describe "this model have many rents" do 
    it { should have_many(:rents) }
  end
  describe "this model belongs to owner" do
    it { should belong_to(:owner) }
  end
end