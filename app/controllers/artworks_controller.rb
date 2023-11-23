class ArtworksController < ApplicationController
  before_action :set_artist, only: [:index, :new, :create]

  def index
    @artworks = Artwork.where(artist: @artist)
  end

  def show
    @artwork = Artwork.find(params[:id])
  end

  def new
    @artwork = Artwork.new
    @artworks = Artwork.where(artist: @artist)
  end

  def create
    @artwork = Artwork.new(artwork_params)
    @artwork.artist = @artist
    if @artwork.save
      redirect_to artist_artworks_path(@artist), notice: 'Artwork was successfully created.'
    else
      render :new
    end
  end

  def destroy
    @artwork = Artwork.find(params[:id])
    @artwork.destroy
    redirect_to artist_artworks_path(@artwork.artist), notice: 'Artwork was successfully destroyed.'
  end

  private

  def set_artist
    @artist = Artist.find(params[:artist_id])
  end

  def artwork_params
    params.require(:artwork).permit(:title, :description, artworks: [])
  end
end
