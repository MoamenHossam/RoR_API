require "rails_helper"

# RSpec
RSpec.describe PlacesController, type: :controller do
  it do
    params = {
      place: {
        longitude: '33.33',
        latitude: '44.44',
        name: 'zamalek'
      }
    }
    should permit(:name, :longitude, :latitude).
      for(:create, params: params).
      on(:place)

      should respond_with(201)
  end

  describe 'GET #index' do
    before { get :index }

    it { should respond_with(403) }
  end

end