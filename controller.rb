class Controller
  attr_reader :url, :klass, :super_class, :view
  attr_accessor :markets

  def initialize(args)
    @url= args.fetch(:url)
    @klass = args.fetch(:klass)
    @super_class = args.fetch(:super_class)
    @view = args.fetch(:view)
    @markets = []
  end

  def run
    @markets = InformationParser.parse(url, klass, super_class)
    View.display_question("Would you like to SEARCH or DISPLAY ALL farmers markets")

    if gets.chomp[0].downcase == "s"
      search
    else
      display_all
    end


  end


  def search
    View.display_question("Enter the Area Code or Borough you want to sort by")
    search_zip = gets.chomp
    if search_zip.to_i == 0
      View.display_markets(markets.search_by_borough(search_zip))
    else
      View.display_markets(markets.get_markets_in_zip_code(search_zip))
    end
  end

  def display_all
    View.display_question("Would you like to sort by zipcode or borough")
    sort_val = gets.chomp[0].downcase
    if sort_val == "z"
      View.display_markets(markets.sort_by_zipcode)
    else
      View.display_markets(markets.sort_by_borough)
    end

  end

end

