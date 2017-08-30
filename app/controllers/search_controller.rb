class SearchController < ApplicationController
  def index
    @stations = Station.station_search(params[:zip])
byebug
  end
end
