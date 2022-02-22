require "rails_helper"

RSpec.describe User2, type: :model do
  describe "Direct Associations" do
    it { should have_many(:transactions) }
  end

  describe "InDirect Associations" do
    it { should have_many(:sellers) }
  end

  describe "Validations" do
  end
end
