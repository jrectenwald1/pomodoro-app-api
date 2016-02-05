require 'test_helper'

class PomodorosControllerTest < ActionController::TestCase
  setup do
    @pomodoro = pomodoros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pomodoros)
  end

  test "should create pomodoro" do
    assert_difference('Pomodoro.count') do
      post :create, pomodoro: { task: @pomodoro.task, to_do_id: @pomodoro.to_do_id }
    end

    assert_response 201
  end

  test "should show pomodoro" do
    get :show, id: @pomodoro
    assert_response :success
  end

  test "should update pomodoro" do
    put :update, id: @pomodoro, pomodoro: { task: @pomodoro.task, to_do_id: @pomodoro.to_do_id }
    assert_response 204
  end

  test "should destroy pomodoro" do
    assert_difference('Pomodoro.count', -1) do
      delete :destroy, id: @pomodoro
    end

    assert_response 204
  end
end
