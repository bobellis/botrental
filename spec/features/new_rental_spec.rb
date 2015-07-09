require 'rails_helper'

  describe "the rental process" do
    it("allows a user to rent a bot and creates a join between the two") do
      user = FactoryGirl.create(:user)
      bot = FactoryGirl.create(:bot)
      visit '/'
      click_link 'Login'
      fill_in 'Email', :with => user.email
      fill_in 'Password', :with => user.password
      click_button 'Log in'
      click_link 'Bots'
      click_link 'SuperBot'
      click_link 'Rent This Bot'
      click_button 'Create Rental'
      click_link 'Your Profile'
      expect(page).to have_content('SuperBot')
    end
  end
