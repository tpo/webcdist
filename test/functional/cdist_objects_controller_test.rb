require 'test_helper'

class CdistObjectsControllerTest < ActionController::TestCase
  setup do
    @cdist_object = cdist_objects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cdist_objects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cdist_object" do
    assert_difference('CdistObject.count') do
      post :create, cdist_object: { cdist_type_id: @cdist_object.cdist_type_id }
    end

    assert_redirected_to cdist_object_path(assigns(:cdist_object))
  end

  test "should show cdist_object" do
    get :show, id: @cdist_object
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cdist_object
    assert_response :success
  end

  test "should update cdist_object" do
    put :update, id: @cdist_object, cdist_object: { cdist_type_id: @cdist_object.cdist_type_id }
    assert_redirected_to cdist_object_path(assigns(:cdist_object))
  end

  test "should destroy cdist_object" do
    assert_difference('CdistObject.count', -1) do
      delete :destroy, id: @cdist_object
    end

    assert_redirected_to cdist_objects_path
  end
end
