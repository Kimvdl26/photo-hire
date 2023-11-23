class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @artists = Artist.all
  end

  def index_artworks
    @artworks = Artwork.all
  end

  def profile
    @bookings = current_user.bookings
    @artist = current_user.artist.id
  end
end
