

class Right_triangle
	def initialize
		@abc = 90.0
	end
	def angle_1=(bac)
		@bac = bac.to_f
	end
	def angle_1
		@bac
	end	
	def angle_2=(acb)
		@acb= acb.to_f
	end
	def angle_2
		@acb
	end
	def angle_3
		@abc
	end
	def  leg1=(a)
		@a= a.to_f
	end
	def leg1
		@a
	end
	def leg2=(b)	
		@b= b.to_f
	end
	def leg2
		@b	
	end
	def hypotenuse=(c)
		@c = c.to_f
	end
	def hypotenuse
		@c
	end
	def area=(area)
		@area = area
	end
	def area
		@area
	end
	def perimeter=(p)
		@p = p
	end
	def perimeter
		@p
	end
	def calculate_legs
		if leg1 && leg2 
			@c = @a**2 + @b**2
			@c = Math.sqrt(@c)
		elsif leg1 && hypotenuse
			@b = @c**2 - @a**2
			@b = Math.sqrt(@b)
		elsif leg2 && hypotenuse
			@a = @c**2 - @b**2
			@a = Math.sqrt(@a)		
		end
	end
	def calculate_angles
		if angle_1 && angle_3 
			angle_2 = 180 -(angle_1 + angle_3)
			@acb = angle_2
		elsif angle_2 && angle_3
			angle_1 = 180 -(angle_2 + angle_3)
			@bac = angle_1
		end
	end
	def calculate_area
		@area = (leg1 * leg2) * 0.5
		@area = @area
	end
	def calculate_perimeter
		@p = leg1 + leg2 + hypotenuse
		@p = @p
	end
end


class Circle
	def radius=(r)
		@r = r
	end
	def radius
		@r
	end
	def diameter=(d)
		@d = @r * 2
	end
	def diameter
		@d
	end
	def circumfrence=(C)
		@C = C
	end
	def circumfrence
		@C
	end
	def area(A)
		@A = A
	end
	def area
		@A
	end
	def calculate_circumference
		if radius
			@C = (2 * @r)(22/7)
			@C = @C
		end
		elsif diameter
			@C = @d(22/7)
			@C = @C
		end	
	end
	def calculate_area
		if radius
			@A = (@r**2) * (22/7)
	end
end















