# RSpec
require "rails_helper"

# RSpec
RSpec.describe TripsController, type: :controller do
  it do
    params = {
      trip: {
        driver_id: '1',
      }
    }
    should permit(:driver_id, :source_id, :destination_id, :departure_time, :seats, :users).
      for(:create, params: params).
      on(:trip)

      should respond_with(201)
  end



end