require 'test_helper'
require 'get_binance_daily_volume'

class BinanceDailyVolumeTest < ActiveSupport::TestCase
  test "Scrapes Binance daily volume total" do
    VCR.use_cassette("binance_daily_volume") do
      assert_equal(1_339_462_608, GetBinanceDailyVolume.run!)
    end
  end
end
