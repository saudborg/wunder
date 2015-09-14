class User < ActiveRecord::Base

  # Fields Validation
  validates_presence_of :first_name, message: "must be filled"
  validates_presence_of :last_name, message: "must be filled"
  validates_presence_of :email, message: "must be filled"

  validates_length_of :first_name, :maximum => 255
  validates_length_of :last_name, :maximum => 255
  validates_length_of :email, :maximum => 255
  
  # One drive_application has one user
  belongs_to :driver_application
  
  # Method created to return the full name concatenated
  def full_name
    "#{first_name} #{last_name} " 
  end
end
