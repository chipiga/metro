class Station < ActiveRecord::Base
  has_one :connected, :foreign_key => 'connected_to', :primary_key => 'identifier', :class_name => 'Station'
end
