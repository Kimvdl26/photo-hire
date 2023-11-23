class BookingsController < ApplicationController
  def new
    @artist = Artist.find(params[:artist_id])
    @booking = Booking.new
  end

  def create
    @artist = Artist.find(params[:artist_id])
    @booking = Booking.new(params.require(:booking).permit(:date, :artist_id))
    @booking.user = current_user
    @booking.artist = @artist
    @booking.status = "pending"
    if @booking.save
      redirect_to profile_path, notice: 'Booking was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end
end
