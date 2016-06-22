require 'test_helper'

class IncidentTypesControllerTest < ActionController::TestCase
  setup do
    @incident_type = incident_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:incident_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create incident_type" do
    assert_difference('IncidentType.count') do
      post :create, incident_type: { name: @incident_type.name }
    end

    assert_redirected_to incident_type_path(assigns(:incident_type))
  end

  test "should show incident_type" do
    get :show, id: @incident_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @incident_type
    assert_response :success
  end

  test "should update incident_type" do
    patch :update, id: @incident_type, incident_type: { name: @incident_type.name }
    assert_redirected_to incident_type_path(assigns(:incident_type))
  end

  test "should destroy incident_type" do
    assert_difference('IncidentType.count', -1) do
      delete :destroy, id: @incident_type
    end

    assert_redirected_to incident_types_path
  end
end
