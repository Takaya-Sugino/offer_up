require "rails_helper"

RSpec.describe Item, type: :model do
  describe "Direct Associations" do
    it { should belong_to(:category) }

    it { should have_many(:comments) }
  end

  describe "InDirect Associations" do
    it { should have_many(:users) }
  end

  describe "Validations" do
  end
end
