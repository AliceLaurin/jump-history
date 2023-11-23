class TravelsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:show, :index]

  def index
    if params[:query].present?
      @travels = Travel.search_by_name_and_description_and_period_and_address(params[:query])
    else
      @travels = Travel.all
    end
    respond_to do |format|
      format.html
      format.text { render partial: "travels/list", locals: { travels: @travels }, formats: [:html] }
    end
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
    @booking = Booking.new
  end

  private

  def params_travel
    params.require(:travel).permit(:name, :picture, :address, :period, :perilousness, :description, :price, :duration, :number_of_travelers, :user_id)
  end
end
