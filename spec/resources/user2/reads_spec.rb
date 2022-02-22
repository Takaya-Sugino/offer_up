require "rails_helper"

RSpec.describe User2Resource, type: :resource do
  describe "serialization" do
    let!(:user2) { create(:user2) }

    it "works" do
      render
      data = jsonapi_data[0]
      expect(data.id).to eq(user2.id)
      expect(data.jsonapi_type).to eq("user2s")
    end
  end

  describe "filtering" do
    let!(:user21) { create(:user2) }
    let!(:user22) { create(:user2) }

    context "by id" do
      before do
        params[:filter] = { id: { eq: user22.id } }
      end

      it "works" do
        render
        expect(d.map(&:id)).to eq([user22.id])
      end
    end
  end

  describe "sorting" do
    describe "by id" do
      let!(:user21) { create(:user2) }
      let!(:user22) { create(:user2) }

      context "when ascending" do
        before do
          params[:sort] = "id"
        end

        it "works" do
          render
          expect(d.map(&:id)).to eq([
                                      user21.id,
                                      user22.id,
                                    ])
        end
      end

      context "when descending" do
        before do
          params[:sort] = "-id"
        end

        it "works" do
          render
          expect(d.map(&:id)).to eq([
                                      user22.id,
                                      user21.id,
                                    ])
        end
      end
    end
  end

  describe "sideloading" do
    # ... your tests ...
  end
end
