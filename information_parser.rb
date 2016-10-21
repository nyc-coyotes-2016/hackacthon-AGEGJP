
module InformationParser

  def self.parse(url)
  json_string_response = open(url).read
  market_array = JSON.parse(json_string_response).map do |market|
    FarmerMarket.new(market)
  end
  Markets.new(markets: market_array)
  end
end

