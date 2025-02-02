require 'rails_helper'

RSpec.describe "Teams", type: :request do

  describe "POST /create" do
    it "メッセージが表示されること" do
      post team_index_path, params: { team: {name: Faker::Name.name, user_id: 1 } }
      html = css_select('#user_create').map(&:text)
      expect(html.first).to include('team_all')
    end
  end
end
