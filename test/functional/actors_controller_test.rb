require 'test_helper'

class ActorsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:actors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create actor" do
    assert_difference('Actor.count') do
      post :create, :actor => { }
    end

    assert_redirected_to actor_path(assigns(:actor))
  end

  test "should show actor" do
    get :show, :id => actors(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => actors(:one).to_param
    assert_response :success
  end

  test "should update actor" do
    put :update, :id => actors(:one).to_param, :actor => { }
    assert_redirected_to actor_path(assigns(:actor))
  end

  test "should destroy actor" do
    assert_difference('Actor.count', -1) do
      delete :destroy, :id => actors(:one).to_param
    end

    assert_redirected_to actors_path
  end
end
