require 'rails_helper'
RSpec.describe ReportsController, type: :controller do
  describe "controller" do
    it "action info test was sucessfully" do
      get :info
      expect(response.status).to eq(200) 
    end
  end
end


