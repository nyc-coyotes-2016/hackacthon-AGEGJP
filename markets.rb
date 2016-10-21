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

  def search_by_borough(borough)
    markets.select {|market| market.borough == borough.capitalize}
  end


  def sort_by_borough
    markets.sort_by{|obj| obj.borough.capitalize}
  end

  def sort_by_zip_code
    markets.sort_by{|obj| obj.zipcode}
  end


end
