require 'rails_helper'

  describe User do
    it "allows you to create a user" do
      user = FactoryGirl.create(:user)
    end
    it { should validate_presence_of :email}
    it {should have_many :bots}
    it {should have_many :favorites}
    it {should have_many :rentals}
  end
