class NrelCall

  def self.alt_search(zip)
    response = Faraday.get("https://api.data.gov/nrel/alt-fuel-stations/v1/nearest.json?api_key=#{ENV["NREL_KEY"]}&location=#{zip}&radius=6&fuel_type=ELEC,LPG&limit=10")
    JSON.parse(response.body, symbolize_names: true)[:fuel_stations]
  end

end


[
       {
           "access_days_time": "24 hours daily",
           "fuel_type_code": "ELEC",
           "station_name": "UDR",
           "city": "Denver",
           "state": "CO",
           "street_address": "800 Acoma St",
           "zip": "80204",
           "distance": 0.31422
       },
