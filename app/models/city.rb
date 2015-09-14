class City < ActiveRecord::Base
  
  #Fields validations
  validates_presence_of :name, message: "must be filled"
  validates_length_of :name, :maximum => 255
  validates_associated :driver_application

  # One driver_application has one City  
  belongs_to :driver_application
  
  
end
