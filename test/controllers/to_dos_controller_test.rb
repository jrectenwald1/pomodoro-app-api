require 'test_helper'

class ToDosControllerTest < ActionController::TestCase
  setup do
    @to_do = to_dos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:to_dos)
  end

  test "should create to_do" do
    assert_difference('ToDo.count') do
      post :create, to_do: { description: @to_do.description, user_id: @to_do.user_id }
    end

    assert_response 201
  end

  test "should show to_do" do
    get :show, id: @to_do
    assert_response :success
  end

  test "should update to_do" do
    put :update, id: @to_do, to_do: { description: @to_do.description, user_id: @to_do.user_id }
    assert_response 204
  end

  test "should destroy to_do" do
    assert_difference('ToDo.count', -1) do
      delete :destroy, id: @to_do
    end

    assert_response 204
  end
end
