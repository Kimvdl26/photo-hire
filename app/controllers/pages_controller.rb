class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @artists = Artist.all
  end

  def profile
    @bookings = current_user.bookings
    # @artists = current_user.artists
  end
end
