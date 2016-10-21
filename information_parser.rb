
module InformationParser

  def self.parse(url, klass, super_klass)
  json_string_response = open(url).read
  market_array = JSON.parse(json_string_response).map do |market|
    klass.new(market)
  end
  super_klass.new(markets: market_array)
  end
end

