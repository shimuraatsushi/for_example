require 'rails_helper'

RSpec.describe "User", type: :request do
  describe "GET /use" do
    context "user/index" do
      it "200が返ること" do
        get users_path
        expect(response).to have_http_status(200)
      end
      it "Usersがあること" do
        get users_path
        html = css_select('h1').map(&:text)
        expect(html.first).to eq('Users')
      end
    end
  end
end

