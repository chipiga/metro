class Station < ActiveRecord::Base
  has_one :connected, :foreign_key => 'connected_to', :primary_key => 'identifier', :class_name => 'Station'
  
  named_scope :with_color, lambda {|color | {:conditions => {:color => color}}}
  
  def distance_to_next
    if next_station 
      Station.distance(self,next_station) 
    end
  end
  
  def next_station
    @next_station ||= Station.first(:conditions => {:color => self.color, :id => self.id+1})
  end

  def self.distance(point1,point2)
    r = 6371
    lat1 = point1[:lat]*Math::PI/180
    lon1 = point1[:lng]*Math::PI/180
    lat2 = point2[:lat]*Math::PI/180
    lon2 = point2[:lng]*Math::PI/180
    dlon = lon2 - lon1
    dlat = lat2 - lat1
    a = (Math.sin(dlat/2)*Math.sin(dlat/2)) + Math.cos(lat1) * Math.cos(lat2) * (Math.sin(dlon/2)*Math.sin(dlon/2))
    c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a))
    d = r * c
  end
end
