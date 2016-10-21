require_relative 'config'


args = {url: "https://data.cityofnewyork.us/resource/cw3p-q2v6.json",
klass: FarmerMarket,
super_class: Markets,
view: View}


controller = Controller.new(args)
controller.run

