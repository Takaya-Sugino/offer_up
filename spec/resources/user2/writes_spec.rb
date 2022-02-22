require 'rails_helper'

RSpec.describe User2Resource, type: :resource do
  describe 'creating' do
    let(:payload) do
      {
        data: {
          type: 'user2s',
          attributes: { }
        }
      }
    end

    let(:instance) do
      User2Resource.build(payload)
    end

    it 'works' do
      expect {
        expect(instance.save).to eq(true), instance.errors.full_messages.to_sentence
      }.to change { User2.count }.by(1)
    end
  end

  describe 'updating' do
    let!(:user2) { create(:user2) }

    let(:payload) do
      {
        data: {
          id: user2.id.to_s,
          type: 'user2s',
          attributes: { } # Todo!
        }
      }
    end

    let(:instance) do
      User2Resource.find(payload)
    end

    xit 'works (add some attributes and enable this spec)' do
      expect {
        expect(instance.update_attributes).to eq(true)
      }.to change { user2.reload.updated_at }
      # .and change { user2.foo }.to('bar') <- example
    end
  end

  describe 'destroying' do
    let!(:user2) { create(:user2) }

    let(:instance) do
      User2Resource.find(id: user2.id)
    end

    it 'works' do
      expect {
        expect(instance.destroy).to eq(true)
      }.to change { User2.count }.by(-1)
    end
  end
end
