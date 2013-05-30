require 'test_helper'

class CdistConfigurationsControllerTest < ActionController::TestCase
  setup do
    @cdist_configuration = cdist_configurations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cdist_configurations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cdist_configuration" do
    assert_difference('CdistConfiguration.count') do
      post :create, cdist_configuration: { description: @cdist_configuration.description, name: @cdist_configuration.name }
    end

    assert_redirected_to cdist_configuration_path(assigns(:cdist_configuration))
  end

  test "should show cdist_configuration" do
    get :show, id: @cdist_configuration
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cdist_configuration
    assert_response :success
  end

  test "should update cdist_configuration" do
    put :update, id: @cdist_configuration, cdist_configuration: { description: @cdist_configuration.description, name: @cdist_configuration.name }
    assert_redirected_to cdist_configuration_path(assigns(:cdist_configuration))
  end

  test "should destroy cdist_configuration" do
    assert_difference('CdistConfiguration.count', -1) do
      delete :destroy, id: @cdist_configuration
    end

    assert_redirected_to cdist_configurations_path
  end
end
