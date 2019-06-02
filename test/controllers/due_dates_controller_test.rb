require 'test_helper'

class DueDatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @due_date = due_dates(:one)
  end

  test "should get index" do
    get due_dates_url, as: :json
    assert_response :success
  end

  test "should create due_date" do
    assert_difference('DueDate.count') do
      post due_dates_url, params: { due_date: { date: @due_date.date } }, as: :json
    end

    assert_response 201
  end

  test "should show due_date" do
    get due_date_url(@due_date), as: :json
    assert_response :success
  end

  test "should update due_date" do
    patch due_date_url(@due_date), params: { due_date: { date: @due_date.date } }, as: :json
    assert_response 200
  end

  test "should destroy due_date" do
    assert_difference('DueDate.count', -1) do
      delete due_date_url(@due_date), as: :json
    end

    assert_response 204
  end
end
