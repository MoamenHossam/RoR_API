require 'rails_helper'

describe User , type: :model do
  it "has a valid factory" do
    FactoryGirl.create(:user).should be_valid
  end

 it { should validate_presence_of :group_id }
 it { should validate_presence_of :first_name }
 it { should belong_to(:group) }
 it { should belong_to(:home_place) }
 it { should belong_to(:work_place) }
 it { should have_and_belong_to_many(:trips) }

end

