class BookingsController < ApplicationController
  def create
    if Booking.create!(booking_params.merge(user_id: current_user.id))
      # redirect_to admin_post_path(@post),
      #   notice: 'Your booking was submitted!'
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:house_id, :check_in, :check_out)
  end
end
