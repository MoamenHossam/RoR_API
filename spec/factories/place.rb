# spec/factories/group.rb
require 'faker'

FactoryGirl.define do
  factory :place do |f|
    f.longitude { Faker::Number.decimal(2, 3) }
    f.latitude { Faker::Number.decimal(2, 3) }
    f.name {Faker::Address.city}
  end
end