class GpsController < ApplicationController
  
  def new
    @user_session = UserSession.new
    r = 6371
    point1 = { :lat => 50.50196343778538, :lng => 30.49954891204834 }
    point2 = { :lat => 50.51222576184578, :lng => 30.49851894378662 }
    lat1 = point1[:lat]*Math::PI/180
    lon1 = point1[:lng]*Math::PI/180
    lat2 = point2[:lat]*Math::PI/180
    lon2 = point2[:lng]*Math::PI/180
    dlon = lon2 - lon1
    dlat = lat2 - lat1
    a = (Math.sin(dlat/2)*Math.sin(dlat/2)) + Math.cos(lat1) * Math.cos(lat2) * (Math.sin(dlon/2)*Math.sin(dlon/2))
    c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a))
    d = r * c
    render :text => d
  end
  
  def index
    
  end
  
end
