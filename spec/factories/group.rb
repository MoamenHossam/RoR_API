# spec/factories/group.rb
require 'faker'

FactoryGirl.define do
  factory :group do |f|
    f.name { Faker::Company.name }
  end
end