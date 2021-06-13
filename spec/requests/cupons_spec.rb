require 'rails_helper'

RSpec.describe "Cupons", type: :request do
  describe "GET /cupons" do
    it "works! (now write some real specs)" do
      get cupons_path
      expect(response).to have_http_status(200)
    end
  end
end
