class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @artists = Artist.all
    @artworks = Artwork.all
    @is_homepage = true
  end

  def index_artworks
    @artworks = Artwork.all # or some other query to retrieve artworks
  end

  def index_artists
    @artists = Artist.all # or some other query to retrieve artists
  end

  def profile
    @bookings = current_user.bookings
  end
end
