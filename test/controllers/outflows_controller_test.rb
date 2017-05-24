require 'test_helper'

class OutflowsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @outflow = outflows(:one)
  end

  test "should get index" do
    get outflows_url
    assert_response :success
  end

  test "should get new" do
    get new_outflow_url
    assert_response :success
  end

  test "should show outflow" do
    get outflow_url(@outflow)
    assert_response :success
  end

  test "should get edit" do
    get edit_outflow_url(@outflow)
    assert_response :success
  end

  test "should destroy outflow" do
    assert_difference('Outflow.count', -1) do
      delete outflow_url(@outflow)
    end

    assert_redirected_to outflows_url
  end
end
