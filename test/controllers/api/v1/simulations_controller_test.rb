require "test_helper"

class Api::V1::SimulationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_simulation = api_v1_simulations(:one)
  end

  test "should get index" do
    get api_v1_simulations_url, as: :json
    assert_response :success
  end

  test "should create api_v1_simulation" do
    assert_difference("Api::V1::Simulation.count") do
      post api_v1_simulations_url, params: { api_v1_simulation: { daysWeek: @api_v1_simulation.daysWeek, hoursDay: @api_v1_simulation.hoursDay, months: @api_v1_simulation.months, tubesConfiguration: @api_v1_simulation.tubesConfiguration } }, as: :json
    end

    assert_response :created
  end

  test "should show api_v1_simulation" do
    get api_v1_simulation_url(@api_v1_simulation), as: :json
    assert_response :success
  end

  test "should update api_v1_simulation" do
    patch api_v1_simulation_url(@api_v1_simulation), params: { api_v1_simulation: { daysWeek: @api_v1_simulation.daysWeek, hoursDay: @api_v1_simulation.hoursDay, months: @api_v1_simulation.months, tubesConfiguration: @api_v1_simulation.tubesConfiguration } }, as: :json
    assert_response :success
  end

  test "should destroy api_v1_simulation" do
    assert_difference("Api::V1::Simulation.count", -1) do
      delete api_v1_simulation_url(@api_v1_simulation), as: :json
    end

    assert_response :no_content
  end
end
