require 'test_helper'

class PeopleRiskGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @people_risk_group = people_risk_groups(:one)
  end

  test "should get index" do
    get people_risk_groups_url, as: :json
    assert_response :success
  end

  test "should create people_risk_group" do
    assert_difference('PeopleRiskGroup.count') do
      post people_risk_groups_url, params: { people_risk_group: { person_id: @people_risk_group.person_id, risk_group_id: @people_risk_group.risk_group_id } }, as: :json
    end

    assert_response 201
  end

  test "should show people_risk_group" do
    get people_risk_group_url(@people_risk_group), as: :json
    assert_response :success
  end

  test "should update people_risk_group" do
    patch people_risk_group_url(@people_risk_group), params: { people_risk_group: { person_id: @people_risk_group.person_id, risk_group_id: @people_risk_group.risk_group_id } }, as: :json
    assert_response 200
  end

  test "should destroy people_risk_group" do
    assert_difference('PeopleRiskGroup.count', -1) do
      delete people_risk_group_url(@people_risk_group), as: :json
    end

    assert_response 204
  end
end
