# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  def distance(value)
    "#{(value * 1000).round(2)} м"
  end
  
end
