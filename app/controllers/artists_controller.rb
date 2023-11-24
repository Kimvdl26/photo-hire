class ArtistsController < ApplicationController

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(params.require(:artist).permit(:description, :personality, :style, :location, :hourly_rate))
    @artist.user = current_user
    if @artist.save
      current_user.update(is_artist: true)
      current_user.save
      redirect_to profile_path, notice: 'Artist was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def show
    @artist = Artist.find(params[:id])
    @booking = Booking.new
    @reviews = Review.all
  end
end
