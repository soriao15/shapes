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

	def calculate_radius
		if circumfrence
			@r = @r.to_f
			@r = (@circumfrence * 0.5)/ (Math::PI)
		elsif area
			@r = @r.to_f
			@r = (@area/(Math::PI))**0.5
		end
	end  
end