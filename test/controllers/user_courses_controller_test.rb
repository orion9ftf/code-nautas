require "test_helper"

class UserCoursesControllerTest < ActionDispatch::IntegrationTest
  test "should get add_courses" do
    get user_courses_add_courses_url
    assert_response :success
  end

  test "should get destroy_courses" do
    get user_courses_destroy_courses_url
    assert_response :success
  end
end
