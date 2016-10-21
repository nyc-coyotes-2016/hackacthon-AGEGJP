class Controller
  attr_reader :url, :klass, :super_class, :view

  def initialize(args)
    @url= args.fetch(:url)
    @klass = args.fetch(:klass)
    @super_class = args.fetch(:super_class)
    @view = args.fetch(:view)
  end

  def run
    markets = InformationParser.parse(url, klass, super_class)
    View.display_question("Please enter the zip code you want to search in")
    search_zip = gets.chomp
    View.display_markets(markets.get_markets_in_zip_code(search_zip))
  end

end

