require 'rails_helper'

RSpec.describe ReportsController, type: :controller do
  describe "controller" do
    it "Se ha realizado la prueba" do
      get:info
      expect(response.status).to eq(200) 
    end
  end
end


