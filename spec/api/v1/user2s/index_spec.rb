require "rails_helper"

RSpec.describe "user2s#index", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/user2s", params: params
  end

  describe "basic fetch" do
    let!(:user21) { create(:user2) }
    let!(:user22) { create(:user2) }

    it "works" do
      expect(User2Resource).to receive(:all).and_call_original
      make_request
      expect(response.status).to eq(200), response.body
      expect(d.map(&:jsonapi_type).uniq).to match_array(["user2s"])
      expect(d.map(&:id)).to match_array([user21.id, user22.id])
    end
  end
end
