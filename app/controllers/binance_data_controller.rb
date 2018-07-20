require "get_binance_coin_value"
require "get_binance_daily_volume"

class BinanceDataController < ApplicationController
  protect_from_forgery with: :null_session
  def create
    BinanceDatum.create! do |datum|
      datum.daily_volume = GetBinanceDailyVolume.run!
      datum.value = GetBinanceCoinValue.run!
    end
  end

  def between
    startTime = params.require(:start)
    endTime = params.require(:end)
    render json: BinanceDatum.where(created_at: startTime..endTime)
  end
end
