class TravelsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:show, :index]

  def index
    @travels = Travel.all
  end

  def new
    @travel = Travel.new
  end

  def create
    @travel = Travel.new(params_travel)
    @travel.user_id = current_user.id
    if @travel.save
      redirect_to travel_path(@travel)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @travel = Travel.find(params[:id])
  end

  private

  def params_travel
    params.require(:travel).permit(:name, :picture, :address, :period, :perilousness, :description, :price, :duration, :number_of_travelers, :user_id)
  end
end
