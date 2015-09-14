class DriverApplication < ActiveRecord::Base
  validates_presence_of :user_id, message: "must be filled"
  validates_presence_of :phone, message: "must be filled"
  validates_presence_of :city_id, message: "must be filled"

  validates_length_of :phone, :maximum => 255
  
  validates_associated :city, :user
  
  belongs_to :city
  belongs_to :user
  
  scope :status, -> (status) {where status: status}
  scope :city_id, -> (city_id) {where city_id: city_id}
  
  STATUS_TYPE = ['pending', 'pending'], ['accepted', 'accepted'],['rejected', 'rejected']
  
end
