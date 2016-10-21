class FarmerMarket
  attr_reader :name, :address, :borough, :state, :zipcode
  def initialize(args={})
    @name = args.fetch("facilityname", "Empty")
    @address = args.fetch("facilitystreetname", "Empty")
    @borough = args.fetch("facilitycity", "Empty")
    @state = args.fetch("facilitystate", "Empty")
    @zipcode = args.fetch("facilityzipcode", "Empty")
  end

end
