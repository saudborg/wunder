class User < ActiveRecord::Base
  validates_presence_of :first_name, message: "must be filled"
  validates_presence_of :last_name, message: "must be filled"
  validates_presence_of :email, message: "must be filled"

  validates_length_of :first_name, :maximum => 255
  validates_length_of :last_name, :maximum => 255
  validates_length_of :email, :maximum => 255
  
  belongs_to :driver_application
  
  def full_name
    "#{first_name} #{last_name} " 
  end
end
