require 'rails_helper'

RSpec.describe User, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:transactions) }

    it { should have_many(:comments) }

    end

    describe "InDirect Associations" do

    it { should have_many(:buyers) }

    it { should have_many(:items) }

    end

    describe "Validations" do

    end
end
