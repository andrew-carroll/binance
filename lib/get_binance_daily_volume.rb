require 'mechanize'

class GetBinanceDailyVolume
  def self.run!
    url = "https://coinmarketcap.com/exchanges/volume/24-hour/"
    page = Mechanize.new.get(url)
    page.body[/id="binance".*?text-bold text-right volume.*?data-usd=\"\d+/m][/\d+$/].to_i
  end
end
