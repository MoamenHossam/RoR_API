class PlacesController < ApplicationController
  before_action :set_place, only: [:show, :edit, :update, :destroy]

  # GET /places
  # GET /places.json
    def index
  @places = Place.all
  render json: @places , status: 403
  end


  # POST /places
  # POST /places.json
  def create
    place = Place.new(place_params)

      if place.save
        render json: place, status: 201

      else
        render json: { errors: place.errors}, status: 422
      end

  end


  private
    
    # Never trust parameters from the scary internet, only allow the white list through.
    def place_params
      params.require(:place).permit(:name, :longitude, :latitude)
    end
end
