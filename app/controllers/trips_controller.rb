class TripsController < ApplicationController
  before_action :set_trip, only: [:show, :edit, :update, :destroy]


  # GET /trips?user_id=1
  def index
    user = User.find(params[:user_id])
    users=User.where(group_id: user.group_id)
    @trips =Array.new
    users.each do |i|
      unless Trip.find_by(driver_id: i.id).nil?
    @trips << Trip.find_by(driver_id: i.id)        
      end
    end

    #render json: trip
    #render json: user
    render json: @trips ,status: 403
  end



  # post /trips/:id/join
  def join
    user=User.find(params[:user_id])
    trip=Trip.find(params[:id])
    trip.users << user
    if trip.update(trip_params)
      render json: trip, status: 200
    else
      render json: { errors: trip.errors }, status: 422
    end
  end

  # post /trips/:id/leave
  def leave
    user=User.find(params[:user_id])
    trip=Trip.find(params[:id])
    trip.users.delete(user)
    if trip.update(trip_params)
      render json: trip, status: 200
    else
      render json: { errors: trip.errors }, status: 422
    end
  end

  # GET /trips/1
  def show
    trip=Trip.find(params[:id])
    render json: trip , status: 403

  end

  # POST /trips.json
  def create
    trip = Trip.new(trip_params)

      if trip.save
        render json: trip, status: 201

      else
        render json: { errors: trip.errors}, status: 422
      end

  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trip
      @trip = Trip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trip_params
      params.require(:trip).permit(:driver_id, :source_id, :destination_id, :departure_time, :seats, :users)
    end
end
