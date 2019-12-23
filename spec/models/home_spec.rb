require 'rails_helper'

RSpec.describe Home, type: :model do
  let!(:home){FactoryBot.create(:home)}  

  describe 'Values fields' do
    it "model have allowed attributes" do 
      expect(home).to be_valid  
      puts home.status
    end  
  end
  describe "Validate associations have_many rents" do 
    it { should have_many(:rents) }
  end
  describe "Validate associations belongs to owner" do
    it { should belong_to(:owner) }
  end
  describe "Home status" do
    it "Home is in progress" do
      expect(home.in_progress?).to be true 
    end
    it "Home is published" do
      expect(home.published?).to be true 
    end
    it "Home is rented" do
      expect(home.rented?).to be true 
    end
  end
end