class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @artists = Artist.all
    @artworks = Artwork.all
  end

  def profile
    @bookings = current_user.bookings
  end
end
