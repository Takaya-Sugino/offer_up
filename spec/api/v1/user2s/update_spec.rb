require 'rails_helper'

RSpec.describe "user2s#update", type: :request do
  subject(:make_request) do
    jsonapi_put "/api/v1/user2s/#{user2.id}", payload
  end

  describe 'basic update' do
    let!(:user2) { create(:user2) }

    let(:payload) do
      {
        data: {
          id: user2.id.to_s,
          type: 'user2s',
          attributes: {
            # ... your attrs here
          }
        }
      }
    end

    # Replace 'xit' with 'it' after adding attributes
    xit 'updates the resource' do
      expect(User2Resource).to receive(:find).and_call_original
      expect {
        make_request
        expect(response.status).to eq(200), response.body
      }.to change { user2.reload.attributes }
    end
  end
end
