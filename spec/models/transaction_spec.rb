require "rails_helper"

RSpec.describe Transaction, type: :model do
  describe "Direct Associations" do
    it { should belong_to(:buyer) }

    it { should belong_to(:seller) }
  end

  describe "InDirect Associations" do
  end

  describe "Validations" do
  end
end
