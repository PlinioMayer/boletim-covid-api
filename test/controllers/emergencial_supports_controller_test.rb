require 'test_helper'

class EmergencialSupportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @emergencial_support = emergencial_supports(:one)
  end

  test "should get index" do
    get emergencial_supports_url, as: :json
    assert_response :success
  end

  test "should create emergencial_support" do
    assert_difference('EmergencialSupport.count') do
      post emergencial_supports_url, params: { emergencial_support: { date: @emergencial_support.date, person_id: @emergencial_support.person_id, value: @emergencial_support.value } }, as: :json
    end

    assert_response 201
  end

  test "should show emergencial_support" do
    get emergencial_support_url(@emergencial_support), as: :json
    assert_response :success
  end

  test "should update emergencial_support" do
    patch emergencial_support_url(@emergencial_support), params: { emergencial_support: { date: @emergencial_support.date, person_id: @emergencial_support.person_id, value: @emergencial_support.value } }, as: :json
    assert_response 200
  end

  test "should destroy emergencial_support" do
    assert_difference('EmergencialSupport.count', -1) do
      delete emergencial_support_url(@emergencial_support), as: :json
    end

    assert_response 204
  end
end
