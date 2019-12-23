require 'rails_helper'

RSpec.describe User, type: :model do
  let!(:user){FactoryBot.create(:user)}

  describe 'valid fields' do
    it "info allowed" do 
      expect(user).to be_valid
    end
  end

  describe "Associations" do 
    it { should have_many(:rents) }
  end
end