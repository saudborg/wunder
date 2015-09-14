require 'test_helper'

class DriverApplicationTest < ActiveSupport::TestCase
  
  def test_create_driver_application
    driver_application = DriverApplication.new(:phone => driver_applications(:one).phone,
    :status => driver_applications(:one).status,
    :user_id => driver_applications(:one).user_id,
    :city_id => driver_applications(:one).city_id,
    :created_at => driver_applications(:one).created_at,
    :updated_at => driver_applications(:one).updated_at)

    msg = "driver application wasn't save. " + "errors: ${cities.errors.inspect}"
    assert driver_application.save, msg

    driver_application_copy = DriverApplication.find(driver_application.id)
    assert_equal driver_application.user_id, driver_application_copy.user_id
  end
end
