class BookingsController < ApplicationController

  before_action :set_travel, only: %i[new create]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.travel = @travel
    @user_id = @travel.user_id
    @booking.user_id = current_user.id
    if @booking.save
      redirect_to dashboard_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.status = params[:status]
    @booking.save
    redirect_to dashboard_path
  end

  private
  def booking_params
    params.require(:booking).permit(:date_of_beginning, :date_of_ending, :number_of_people, :user_id, :travel_id)
  end

  def set_travel
    @travel = Travel.find(params[:travel_id])
  end
end
