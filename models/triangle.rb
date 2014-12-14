

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
		@r = r.to_f
	end
	def radius
		@r
	end
	def diameter
		@d = (@r * 2) 
	end
	def circumfrence=(circumfrence)
		@circumfrence = circumfrence.to_f
	end
	def circumfrence
		@circumfrence
	end
	def area=(area)
		@area = area.to_f
	end
	def area
		@area
	end
	def calculate_circumfrence
		if radius
			@circumfrence = @circumfrence.to_f
			@circumfrence = (2 * @r) * (Math::PI)
			@circumfrence = @circumfrence.to_f
		elsif diameter
			@circumfrence = @circumfrence.to_f
			@circumfrence = @d * (Math::PI)
			@circumfrence = @circumfrence.to_f
		end	
	end
	def calculate_area
		if radius
				@area = @area.to_f
				@area = (@r**2) * (Math::PI)
				@area = @area.to_f
		elsif diameter
			@area = @area.to_f
			@area = ((@d/2.0)**2) * (Math::PI)
			@area = @area.to_f
		end
	end
end


