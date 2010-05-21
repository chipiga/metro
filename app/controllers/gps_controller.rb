class GpsController < ApplicationController
  
  def index
    @red_stations= Station.with_color('red')
  end
  
end
