class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  def dashboard
    @user = current_user
    @bookings = @user.bookings
    @travels = @user.travels
  end

  def about
  end
  
end
