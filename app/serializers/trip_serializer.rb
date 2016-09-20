class TripSerializer < ActiveModel::Serializer
  attributes :id, :destination_id , :source_id, :seats , :users
end
