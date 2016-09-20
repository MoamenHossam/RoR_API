require 'rails_helper'

describe Trip , type: :model do

 it { should validate_presence_of :driver }
 it { should belong_to(:driver) }
 it { should belong_to(:source) }
 it { should have_and_belong_to_many(:users) }

end

