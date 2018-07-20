require 'test_helper'
require 'get_binance_coin_value'

class BinanceCoinValueTest < ActiveSupport::TestCase
  test 'Scrapes USD value' do
    VCR.use_cassette("binance_usd_value") do
      assert_equal(1221, GetBinanceCoinValue.run!)
    end
  end
end
