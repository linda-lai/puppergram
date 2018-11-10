require 'test_helper'

class PuppersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pupper = puppers(:one)
  end

  test "should get index" do
    get puppers_url
    assert_response :success
  end

  test "should get new" do
    get new_pupper_url
    assert_response :success
  end

  test "should create pupper" do
    assert_difference('Pupper.count') do
      post puppers_url, params: { pupper: { description: @pupper.description, name: @pupper.name, picture: @pupper.picture } }
    end

    assert_redirected_to pupper_url(Pupper.last)
  end

  test "should show pupper" do
    get pupper_url(@pupper)
    assert_response :success
  end

  test "should get edit" do
    get edit_pupper_url(@pupper)
    assert_response :success
  end

  test "should update pupper" do
    patch pupper_url(@pupper), params: { pupper: { description: @pupper.description, name: @pupper.name, picture: @pupper.picture } }
    assert_redirected_to pupper_url(@pupper)
  end

  test "should destroy pupper" do
    assert_difference('Pupper.count', -1) do
      delete pupper_url(@pupper)
    end

    assert_redirected_to puppers_url
  end
end
