require 'rails_helper'

RSpec.describe Rent, type: :model do
  let!(:rent){FactoryBot.create(:rent)}
  
  describe "Validate associations belongs to user" do
    it { should belong_to(:user)}    
  end
  describe "Validate associations belongs to home" do
    it { should belong_to(:home) }
  end
  describe 'Values fields' do
    it "model have allowed attributes" do 
      expect(rent).to be_valid  
    end  
  end
  describe "Home status" do
    it "Rent is started" do
      expect(rent.started?).to be true 
    end
    it "Rent is finished" do
      expect(rent.finished?).to be true 
    end
    it "Rent is cancelled" do
      expect(rent.cancelled?).to be true 
    end
  end
end