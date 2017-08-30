class Station
  attr_reader :name
              :address
              :city
              :state
              :zip
              :fuel_type
              :distance
              :access_days_times

  def initialize(station)
    @name = station[:station_name]
    @address = station[:street_address]
    @city = station[:city]
    @state = station[:state]
    @zip = station[:zip]
    @fuel_type = station[:fuel_type_code]
    @distance = station[:distance]
    @access_days_times = station[:access_days_times]
  end

  def self.station_search(zip)
    alt_fuel = []
    stations = NrelService.alt_search(zip)
    stations.each do |station|
      alt_fuel << Station.new(station)
    end
    alt_fuel
  end

end



















#
