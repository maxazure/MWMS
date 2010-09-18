require 'test_helper'

class Admin::ItemcontentsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_itemcontents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create itemcontent" do
    assert_difference('Admin::Itemcontent.count') do
      post :create, :itemcontent => { }
    end

    assert_redirected_to itemcontent_path(assigns(:itemcontent))
  end

  test "should show itemcontent" do
    get :show, :id => admin_itemcontents(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => admin_itemcontents(:one).to_param
    assert_response :success
  end

  test "should update itemcontent" do
    put :update, :id => admin_itemcontents(:one).to_param, :itemcontent => { }
    assert_redirected_to itemcontent_path(assigns(:itemcontent))
  end

  test "should destroy itemcontent" do
    assert_difference('Admin::Itemcontent.count', -1) do
      delete :destroy, :id => admin_itemcontents(:one).to_param
    end

    assert_redirected_to admin_itemcontents_path
  end
end
