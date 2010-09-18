require 'test_helper'

class ExpertsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:experts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create expert" do
    assert_difference('Expert.count') do
      post :create, :expert => { }
    end

    assert_redirected_to expert_path(assigns(:expert))
  end

  test "should show expert" do
    get :show, :id => experts(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => experts(:one).to_param
    assert_response :success
  end

  test "should update expert" do
    put :update, :id => experts(:one).to_param, :expert => { }
    assert_redirected_to expert_path(assigns(:expert))
  end

  test "should destroy expert" do
    assert_difference('Expert.count', -1) do
      delete :destroy, :id => experts(:one).to_param
    end

    assert_redirected_to experts_path
  end
end
