require 'rails_helper'

RSpec.describe "Splashs", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/splashs/index"
      expect(response).to have_http_status(:success)
    end
  end

end
