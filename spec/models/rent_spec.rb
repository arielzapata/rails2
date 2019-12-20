require 'rails_helper'

RSpec.describe Rent, type: :model do
  let!(:rent){FactoryBot.create(:rent)}
  
  describe "belongs successfully" do
    it { should belong_to(:user) }
  end
  describe "belongs successfully" do
    it { should belong_to(:home) }
  end
end