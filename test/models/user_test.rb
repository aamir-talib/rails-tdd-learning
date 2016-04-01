require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test 'count total users' do
    assert 1000, User.count
  end

end
