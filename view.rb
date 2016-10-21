module View

  def self.display_question(question)
    puts "#{question}"
  end

  def self.display_markets(markets)
    if markets.count == 0
      puts "There are no markets in this zip code."
    end
    markets.each do |market|
      puts "The #{market.name} is at #{market.address} in #{market.borough}, #{market.zipcode}"
    end
  end
end
