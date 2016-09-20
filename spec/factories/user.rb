# spec/factories/user.rb
require 'faker'

FactoryGirl.define do
  factory :user do |f|
  	f.group_id{"1"}
    f.first_name { Faker::Name.first_name }
    f.last_name { Faker::Name.last_name }
  end
end