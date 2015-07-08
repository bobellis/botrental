class FavoritesController < ApplicationController

  def new
    bot_id = params[:bot_id]
    @user = current_user
    @favorite = @user.favorites.new(:bot_id => bot_id)
    @favorite.save
    redirect_to user_path(@favorite.user_id)
  end

end
