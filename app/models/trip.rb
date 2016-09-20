class Trip < ActiveRecord::Base
  belongs_to :driver, :class_name => 'User', :foreign_key => 'driver_id'
  belongs_to :source, :class_name =>'Place'
  belongs_to :destination
  has_and_belongs_to_many :users
  validates :driver, presence: true
end
