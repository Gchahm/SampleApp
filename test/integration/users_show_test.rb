require 'test_helper'

class UsersShowTest < ActionDispatch::IntegrationTest

  def setup
    @new_user = users(:new_user)
  end

  test "non active users shouldn't show" do
    get user_path(@new_user)
    follow_redirect!
    assert_template 'static_pages/home'
  end

end
