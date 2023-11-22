class ArtistsController < ApplicationController
  def show
    @artist = Artist.find(params[:id])
    @booking = Booking.new
  end
end
