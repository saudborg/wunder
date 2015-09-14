class City < ActiveRecord::Base
  validates_presence_of :name, message: "must be filled"
 
  validates_length_of :name, :maximum => 255
  
  belongs_to :driver_application
  
  validates_associated :driver_application
  
end
