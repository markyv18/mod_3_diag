class Station
  attr_reader :name
              :address
              :city
              :state
              :zip
              :fuel_type
              :distance
              :access_days_times

  def initialize(params)
    byebug

    @name = params[:name]
    @address = params[:]
    @city = params[:]
    @state = params[:]
    @zip = params[:]
    @fuel_type = params[:]
    @distance = params[:]
    @access_days_times = params[:]

  end

  def self.station_search(zip)
    stations = NrelCall.alt_search(zip)
    stations.each do |station|
      Station.new(station)
    end
    byebug
  end

end
