require 'test_helper'

class BedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bed = beds(:one)
  end

  test "should get index" do
    get beds_url, as: :json
    assert_response :success
  end

  test "should create bed" do
    assert_difference('Bed.count') do
      post beds_url, params: { bed: { health_center_id: @bed.health_center_id, person_id: @bed.person_id } }, as: :json
    end

    assert_response 201
  end

  test "should show bed" do
    get bed_url(@bed), as: :json
    assert_response :success
  end

  test "should update bed" do
    patch bed_url(@bed), params: { bed: { health_center_id: @bed.health_center_id, person_id: @bed.person_id } }, as: :json
    assert_response 200
  end

  test "should destroy bed" do
    assert_difference('Bed.count', -1) do
      delete bed_url(@bed), as: :json
    end

    assert_response 204
  end
end
