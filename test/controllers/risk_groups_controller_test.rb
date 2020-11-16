require 'test_helper'

class RiskGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @risk_group = risk_groups(:one)
  end

  test "should get index" do
    get risk_groups_url, as: :json
    assert_response :success
  end

  test "should create risk_group" do
    assert_difference('RiskGroup.count') do
      post risk_groups_url, params: { risk_group: { name: @risk_group.name } }, as: :json
    end

    assert_response 201
  end

  test "should show risk_group" do
    get risk_group_url(@risk_group), as: :json
    assert_response :success
  end

  test "should update risk_group" do
    patch risk_group_url(@risk_group), params: { risk_group: { name: @risk_group.name } }, as: :json
    assert_response 200
  end

  test "should destroy risk_group" do
    assert_difference('RiskGroup.count', -1) do
      delete risk_group_url(@risk_group), as: :json
    end

    assert_response 204
  end
end
