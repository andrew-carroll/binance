require 'test_helper'

class BinanceDataControllerTest < ActionDispatch::IntegrationTest
  test "should get record" do
    get binance_data_record_url
    assert_response :success
  end

end
