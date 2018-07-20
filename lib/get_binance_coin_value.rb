require 'mechanize'

class GetBinanceCoinValue
  def self.run!
    url = "https://coinmarketcap.com/assets/binance-coin/"
    page = Mechanize.new.get(url)
    page.css('#quote_price').text[/[\d.]+/].gsub(/[.]/,'').to_i
  end
end
