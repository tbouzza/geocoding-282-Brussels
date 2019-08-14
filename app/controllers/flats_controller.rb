class FlatsController < ApplicationController
  before_action :set_flat, only: [:show, :edit, :update, :destroy]

  def index
    @flats = Flat.geocoded #returns flats with coordinates

    @markers = @flats.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude
      }
    end
  end
end
