# Leap year rules:
#   - Every year that is evenly divisible by 4
#   - Except every year that is evenly divisible by 100
#   - Unless the year is also evenly divisible by 400
require 'pry'

class Year
  def self.leap?(year)
    if (year % 4 == 0 && ( year % 100 != 0 || year % 400 == 0 ))
      true
    else
      false
    end
  end
end
