# RSpec
require "rails_helper"

# RSpec
RSpec.describe UsersController, type: :controller do
  it do
    params = {
      user: {
        first_name: 'John',
        last_name: 'Doe',
        phone_number: '0113',
        group_id: '1',
        home_place_id: '1',
        work_place_id: '1'
      }
    }
    should permit(:first_name, :last_name, :phone_number, :group_id, :home_place_id, :work_place_id).
      for(:create, params: params).
      on(:user)

      should respond_with(201)
  end


end