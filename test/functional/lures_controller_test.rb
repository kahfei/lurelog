require 'test_helper'

class LuresControllerTest < ActionController::TestCase
  setup do
    @lure = lures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lure" do
    assert_difference('Lure.count') do
      post :create, lure: @lure.attributes
    end

    assert_redirected_to lure_path(assigns(:lure))
  end

  test "should show lure" do
    get :show, id: @lure
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lure
    assert_response :success
  end

  test "should update lure" do
    put :update, id: @lure, lure: @lure.attributes
    assert_redirected_to lure_path(assigns(:lure))
  end

  test "should destroy lure" do
    assert_difference('Lure.count', -1) do
      delete :destroy, id: @lure
    end

    assert_redirected_to lures_path
  end
end
