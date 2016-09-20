# RSpec
require "rails_helper"

# RSpec
RSpec.describe GroupsController, type: :controller do
  it do
    params = {
      group: {
        name: 'kolya'
      }
    }
    should permit(:name).
      for(:create, params: params).
      on(:group)

      should respond_with(201)
  end

  describe 'GET #show' do
    before { get :index }

    it { should respond_with(403) }
  end

end