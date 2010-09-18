require 'test_helper'

class ItemcatalogsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:itemcatalogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create itemcatalog" do
    assert_difference('Itemcatalog.count') do
      post :create, :itemcatalog => { }
    end

    assert_redirected_to itemcatalog_path(assigns(:itemcatalog))
  end

  test "should show itemcatalog" do
    get :show, :id => itemcatalogs(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => itemcatalogs(:one).to_param
    assert_response :success
  end

  test "should update itemcatalog" do
    put :update, :id => itemcatalogs(:one).to_param, :itemcatalog => { }
    assert_redirected_to itemcatalog_path(assigns(:itemcatalog))
  end

  test "should destroy itemcatalog" do
    assert_difference('Itemcatalog.count', -1) do
      delete :destroy, :id => itemcatalogs(:one).to_param
    end

    assert_redirected_to itemcatalogs_path
  end
end
