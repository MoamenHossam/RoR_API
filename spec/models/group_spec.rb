require 'rails_helper'

describe Group , type: :model do
  it "has a valid factory" do
    FactoryGirl.create(:group).should be_valid
  end

 it { should validate_presence_of :name }
 it { should have_many(:users) }


end

