class SearchController < ApplicationController
  def index 
    @stations = Station.station_search(params[:zip])
  end
end
