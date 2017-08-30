class Station 
  attr_reader :name
              :address
              :city
              :state
              :zip
              :fuel_type
              :distance
              :access_days_times

  def self.station_search(zip)
    NrelCall.alt_search(zip)

  end

end
