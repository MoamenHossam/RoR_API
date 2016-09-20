class PlaceSerializer < ActiveModel::Serializer
  attributes :name, :longitude, :latitude
end
