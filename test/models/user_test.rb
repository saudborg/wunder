require 'test_helper'

class UserTest < ActiveSupport::TestCase
   def test_create_user
    user = User.new(:first_name => users(:one).first_name,
    :last_name => users(:one).last_name,
    :email => users(:one).email,
    :created_at => users(:one).created_at,
    :updated_at => users(:one).updated_at)

    msg = "user wasn't save. " + "errors: ${cities.errors.inspect}"
    assert user.save, msg

    user_copy = User.find(user.id)
    assert_equal user.first_name, user_copy.first_name
  end

end
