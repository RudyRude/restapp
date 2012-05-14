require 'test_helper'

class RestsControllerTest < ActionController::TestCase
  setup do
    @rest = rests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rest" do
    assert_difference('Rest.count') do
      post :create, rest: { address: @rest.address, description: @rest.description, name: @rest.name }
    end

    assert_redirected_to rest_path(assigns(:rest))
  end

  test "should show rest" do
    get :show, id: @rest
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rest
    assert_response :success
  end

  test "should update rest" do
    put :update, id: @rest, rest: { address: @rest.address, description: @rest.description, name: @rest.name }
    assert_redirected_to rest_path(assigns(:rest))
  end

  test "should destroy rest" do
    assert_difference('Rest.count', -1) do
      delete :destroy, id: @rest
    end

    assert_redirected_to rests_path
  end
end
