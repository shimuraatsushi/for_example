require 'rails_helper'

RSpec.describe "User", type: :request do
  describe "GET /use" do
    it "user/index" do
      get users_path
      puts users_path
      expect(response).to have_http_status(200)
    end
  end
end

