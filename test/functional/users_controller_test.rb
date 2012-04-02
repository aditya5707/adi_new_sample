require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get user_index" do
    get :user_index
    assert_response :success
  end

  test "should get user_show" do
    get :user_show
    assert_response :success
  end

  test "should get user_new" do
    get :user_new
    assert_response :success
  end

  test "should get user_edit" do
    get :user_edit
    assert_response :success
  end

  test "should get user_create" do
    get :user_create
    assert_response :success
  end

  test "should get user_destroy" do
    get :user_destroy
    assert_response :success
  end

  test "should get user_update" do
    get :user_update
    assert_response :success
  end

end
