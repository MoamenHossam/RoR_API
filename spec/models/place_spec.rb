require 'rails_helper'

describe Place , type: :model do
  it "has a valid factory" do
    FactoryGirl.create(:place).should be_valid
  end

 it { should validate_presence_of :longitude }
 it { should validate_presence_of :latitude }



end
