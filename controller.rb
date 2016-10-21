require_relative 'config'

url = "https://data.cityofnewyork.us/resource/cw3p-q2v6.json"
markets = InformationParser.parse(url)

View.display_question("Please enter the zip code you want to search in")
search_zip = gets.chomp

View.display_markets(markets.get_markets_in_zip_code(search_zip))
