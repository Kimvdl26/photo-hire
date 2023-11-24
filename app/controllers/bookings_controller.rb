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
      redirect_to artist_path(@artist), notice: 'Please select a date.'
    end
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(params.require(:booking).permit(:status))
    redirect_to profile_path
  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.update(status: 'accepted')
    redirect_to profile_path
  end

  def reject
    @booking = Booking.find(params[:id])
    @booking.update(status: 'rejected')
    redirect_to profile_path
  end
end
