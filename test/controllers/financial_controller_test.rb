require 'test_helper'

class FinancialControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get financial_index_url
    assert_response :success
  end

end
