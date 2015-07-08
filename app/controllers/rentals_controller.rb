class RentalsController < ApplicationController

def new
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

private
  def rental_params
    params.require(:rental).permit(:date, :bot_id)
  end

end
