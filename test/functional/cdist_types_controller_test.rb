require 'test_helper'

class CdistTypesControllerTest < ActionController::TestCase
  setup do
    @cdist_type = cdist_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cdist_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cdist_type" do
    assert_difference('CdistType.count') do
      post :create, cdist_type: { description: @cdist_type.description, name: @cdist_type.name, readme: @cdist_type.readme }
    end

    assert_redirected_to cdist_type_path(assigns(:cdist_type))
  end

  test "should show cdist_type" do
    get :show, id: @cdist_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cdist_type
    assert_response :success
  end

  test "should update cdist_type" do
    put :update, id: @cdist_type, cdist_type: { description: @cdist_type.description, name: @cdist_type.name, readme: @cdist_type.readme }
    assert_redirected_to cdist_type_path(assigns(:cdist_type))
  end

  test "should destroy cdist_type" do
    assert_difference('CdistType.count', -1) do
      delete :destroy, id: @cdist_type
    end

    assert_redirected_to cdist_types_path
  end
end
