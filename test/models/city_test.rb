require 'test_helper'

class CityTest < ActiveSupport::TestCase
  def test_create_city
    hamburg = City.new(:name => cities(:one).name,
    :created_at => cities(:one).created_at,
    :updated_at => cities(:one).updated_at)

    msg = "city wasn't save. " + "errors: ${cities.errors.inspect}"
    assert hamburg.save, msg

    hamburg_copy = City.find(hamburg.id)
    assert_equal hamburg.name, hamburg_copy.name
  end

end
