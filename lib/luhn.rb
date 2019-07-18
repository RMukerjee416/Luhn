module Luhn
	def self.is_valid?(number)
    	units = number.to_s.split('')
    	total = 0
    	
    	units.reverse.each_with_index do |unit, index|
      		if index % 2 != 0
        		unit2x = unit.to_i*2
	        	if unit2x > 9
	          		unit2x -= 9
	        	end
        		total += unit2x
      		else
        	total += unit.to_i
      		end
    	end

    	if total % 10 != 0
      		return false
    	else
      		return true
    	end
	end
end