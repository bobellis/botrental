require 'rails_helper'

describe "favorite creation process" do
it ("allows you to create a favorite") do
  bot = FactoryGirl.create(:bot)
  user = FactoryGirl.create(:user)
  visit '/'
  click_link 'Login'
  fill_in 'Email', :with => user.email
  fill_in 'Password', :with => user.password
  click_button 'Log in'
  click_link 'Bots'
  click_link 'Favorite'
  expect(user.favorites.first.bot_id).to eq(bot.id)
  end
end
