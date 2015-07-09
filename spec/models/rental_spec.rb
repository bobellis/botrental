require 'rails_helper'

describe Rental do
  it "allows you to create a rental" do
    user = FactoryGirl.create(:user)
    bot = FactoryGirl.create(:bot)
    rental = user.rentals.new(:bot_id => bot.id)
    rental.save
    expect(rental.bot_id).to eq(bot.id)
  end
  it {should belong_to :user}
  it {should belong_to :bot}
end
