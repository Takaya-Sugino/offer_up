require 'rails_helper'

RSpec.describe "user2s#show", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/user2s/#{user2.id}", params: params
  end

  describe 'basic fetch' do
    let!(:user2) { create(:user2) }

    it 'works' do
      expect(User2Resource).to receive(:find).and_call_original
      make_request
      expect(response.status).to eq(200)
      expect(d.jsonapi_type).to eq('user2s')
      expect(d.id).to eq(user2.id)
    end
  end
end
