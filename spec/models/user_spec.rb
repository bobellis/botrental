require 'rails_helper'

  describe User do
    it "allows you to create a user" do
      user = FactoryGirl.create(:user)
    end
    it { should validate_presence_of :email}
  end
