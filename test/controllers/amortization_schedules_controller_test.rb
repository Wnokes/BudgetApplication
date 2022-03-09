require 'test_helper'

class AmortizationSchedulesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @amortization_schedule = amortization_schedules(:one)
  end

  test "should get index" do
    get amortization_schedules_url
    assert_response :success
  end

  test "should get new" do
    get new_amortization_schedule_url
    assert_response :success
  end

  test "should create amortization_schedule" do
    assert_difference('AmortizationSchedule.count') do
      post amortization_schedules_url, params: { amortization_schedule: { name: @amortization_schedule.name } }
    end

    assert_redirected_to amortization_schedule_url(AmortizationSchedule.last)
  end

  test "should show amortization_schedule" do
    get amortization_schedule_url(@amortization_schedule)
    assert_response :success
  end

  test "should get edit" do
    get edit_amortization_schedule_url(@amortization_schedule)
    assert_response :success
  end

  test "should update amortization_schedule" do
    patch amortization_schedule_url(@amortization_schedule), params: { amortization_schedule: { name: @amortization_schedule.name } }
    assert_redirected_to amortization_schedule_url(@amortization_schedule)
  end

  test "should destroy amortization_schedule" do
    assert_difference('AmortizationSchedule.count', -1) do
      delete amortization_schedule_url(@amortization_schedule)
    end

    assert_redirected_to amortization_schedules_url
  end
end
