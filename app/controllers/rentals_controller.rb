class RentalsController < ApplicationController

def new
  @bot = Bot.find(params[:bot_id])
  @rental = Rental.new
end

def create
  bot_id = params[:bot_id]
  @user = current_user
  @rental = @user.rentals.new(rental_params)
  @rental.save
  redirect_to user_path(@rental.user_id)
end

def show
  @rental = Rental.find(params[:id])
end

def edit
  @rental = Rental.find(params[:id])
  @bot = Bot.find(@rental.bot_id)
end

def update
  @rental = Rental.find(params[:id])
  @rental.update(rental_params)
  if @rental.save
    flash[:notice] = "Your review has been posted."
    redirect_to bot_path(id: @rental.bot_id)
  else
    render :edit
  end
end


private
  def rental_params
    params.require(:rental).permit(:date, :bot_id, :review_title, :review_body, :review_score)
  end

end
