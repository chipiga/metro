class GpsController < ApplicationController
  
  def index
    @red_stations= Station.with_color('red')
    @green_stations= Station.with_color('green')
    @blue_stations= Station.with_color('blue')
  end
  
end
