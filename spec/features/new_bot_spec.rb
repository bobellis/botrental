require 'rails_helper'

describe "new bot process" do
  it "creates a new bot" do
    user = FactoryGirl.create(:user)
    visit '/'
    click_link 'Login'
    fill_in 'Email', :with => user.email
    fill_in 'Password', :with => user.password
    click_button 'Log in'
    click_link 'New Bot'
    fill_in 'Name', :with => "SuperBot"
    fill_in 'Description', :with => "It's a great bot"
    click_button 'Create Bot'
    expect(page).to have_content 'SuperBot'
  end
end
