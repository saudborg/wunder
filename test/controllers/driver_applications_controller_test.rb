require 'test_helper'

class DriverApplicationsControllerTest < ActionController::TestCase
  setup do
    @driver_application = driver_applications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:driver_applications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create driver_application" do
    assert_difference('DriverApplication.count') do
      post :create, driver_application: { city_id: @driver_application.city_id, created_at: @driver_application.created_at, phone: @driver_application.phone, status: @driver_application.status, updated_at: @driver_application.updated_at, user_id: @driver_application.user_id }
    end

    assert_redirected_to driver_application_path(assigns(:driver_application))
  end

  test "should show driver_application" do
    get :show, id: @driver_application
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @driver_application
    assert_response :success
  end

  test "should update driver_application" do
    patch :update, id: @driver_application, driver_application: { city_id: @driver_application.city_id, created_at: @driver_application.created_at, phone: @driver_application.phone, status: @driver_application.status, updated_at: @driver_application.updated_at, user_id: @driver_application.user_id }
    assert_redirected_to driver_application_path(assigns(:driver_application))
  end

  test "should destroy driver_application" do
    assert_difference('DriverApplication.count', -1) do
      delete :destroy, id: @driver_application
    end

    assert_redirected_to driver_applications_path
  end
end
