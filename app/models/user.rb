class User < ActiveRecord::Base
  has_and_belongs_to_many :trips
  belongs_to :group
  belongs_to :home_place, :class_name => 'Place'
  belongs_to :work_place, :class_name => 'Place'
  validates :group_id, presence: true
  validates :first_name, presence: true
end
