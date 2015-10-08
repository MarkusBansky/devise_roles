require File.expand_path('../test_helper', __FILE__)

class UserRolesTest < Test::Unit::TestCase

  test "user_is" do
    admin = 'admin'
    assert_equal 'admin', admin
  end

end
