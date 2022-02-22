require 'rails_helper'

RSpec.describe "user2s#destroy", type: :request do
  subject(:make_request) do
    jsonapi_delete "/api/v1/user2s/#{user2.id}"
  end

  describe 'basic destroy' do
    let!(:user2) { create(:user2) }

    it 'updates the resource' do
      expect(User2Resource).to receive(:find).and_call_original
      expect {
        make_request
        expect(response.status).to eq(200), response.body
      }.to change { User2.count }.by(-1)
      expect { user2.reload }
        .to raise_error(ActiveRecord::RecordNotFound)
      expect(json).to eq('meta' => {})
    end
  end
end
