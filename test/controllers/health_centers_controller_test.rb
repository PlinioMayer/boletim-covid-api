require 'test_helper'

class HealthCentersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @health_center = health_centers(:one)
  end

  test "should get index" do
    get health_centers_url, as: :json
    assert_response :success
  end

  test "should create health_center" do
    assert_difference('HealthCenter.count') do
      post health_centers_url, params: { health_center: { address: @health_center.address, occupied: @health_center.occupied, total: @health_center.total } }, as: :json
    end

    assert_response 201
  end

  test "should show health_center" do
    get health_center_url(@health_center), as: :json
    assert_response :success
  end

  test "should update health_center" do
    patch health_center_url(@health_center), params: { health_center: { address: @health_center.address, occupied: @health_center.occupied, total: @health_center.total } }, as: :json
    assert_response 200
  end

  test "should destroy health_center" do
    assert_difference('HealthCenter.count', -1) do
      delete health_center_url(@health_center), as: :json
    end

    assert_response 204
  end
end
