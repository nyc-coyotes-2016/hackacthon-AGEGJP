class Markets
  attr_reader :markets
  def initialize(args={})
    @markets = args.fetch(:markets, [])
  end

  def get_markets_in_zip_code(search_zip)
    markets.select do |farmer_market|
      farmer_market.zipcode == search_zip
    end
  end


end
