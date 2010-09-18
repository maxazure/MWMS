require 'test_helper'

class UrllistsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:urllists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create urllist" do
    assert_difference('Urllist.count') do
      post :create, :urllist => { }
    end

    assert_redirected_to urllist_path(assigns(:urllist))
  end

  test "should show urllist" do
    get :show, :id => urllists(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => urllists(:one).to_param
    assert_response :success
  end

  test "should update urllist" do
    put :update, :id => urllists(:one).to_param, :urllist => { }
    assert_redirected_to urllist_path(assigns(:urllist))
  end

  test "should destroy urllist" do
    assert_difference('Urllist.count', -1) do
      delete :destroy, :id => urllists(:one).to_param
    end

    assert_redirected_to urllists_path
  end
end
