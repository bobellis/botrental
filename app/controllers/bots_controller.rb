class BotsController < ApplicationController
  before_filter :authenticate_user!, only: [:new, :edit, :update, :destroy]
  def index
    @bots = Bot.all
  end

  def show
    @bot = Bot.find(params[:id])
    @reviews = @bot.rentals.where("review_title != ''")
  end

  def new
    @bot = Bot.new
  end

  def create
    @user = current_user
    @bot = @user.bots.new(bot_params)
    if @bot.save
      redirect_to bots_path
    else
      render :new
    end
  end

  def edit
    @bot = Bot.find(params[:id])
    if current_user.id != @bot.user_id
      flash[:notice] = "That bot doesn't belong to you!"
      redirect_to bot_path(@bot)
    end
  end

  def update
    @user = current_user
    @bot = Bot.find(params[:id])
    @bot.update(bot_params)
    if @bot.save
      redirect_to bots_path
    else
      render :new
    end
  end

  def destroy
    @bot = Bot.find(params[:id])
    @bot.destroy
    redirect_to bots_path
  end

  private
  def bot_params
    params.require(:bot).permit(:name, :description, :image)
  end
end
