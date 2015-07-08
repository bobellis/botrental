require 'rails_helper'
  describe Favorite do
    it {should belong_to :user}

    it 'is associated with a user and a bot' do
      user = FactoryGirl.create(:user)
      bot = FactoryGirl.create(:bot)
      favorite = user.favorites.new(bot_id: bot.id)
      favorite.save
      user.save
      expect(favorite.bot_id).to eq(bot.id)
    end
  end
