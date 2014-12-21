require 'bundler'
Bundler.require
require_relative './models/triangle.rb'
require_relative './models/circle.rb'
require_relative './models/rectangle.rb'

class MyApp < Sinatra::Base

get '/home' do
  	erb :index
end
 
get '/triangle' do	
  erb :triangle
end

post '/triangle' do
	@triangle1= Right_triangle.new
	@triangle1.leg1= params[:leg1].to_f unless params[:leg1] == ""
	@triangle1.leg2= params[:leg2].to_f unless params[:leg2] == ""
	@triangle1.hypotenuse= params[:hypotenuse].to_f unless params[:hypotenuse] == ""
	@triangle1.angle_1= params[:angle_1].to_f unless params[:angle_1] == ""
	@triangle1.angle_2= params[:angle_2].to_f unless params[:angle_2] == ""
	@triangle1.angle_3= params[:angle_3].to_f unless params[:angle_3] == ""
	@triangle1.area= params[:area].to_f unless params[:area] == ""
	@triangle1.perimeter= params[:perimeter].to_f unless params[:perimeter] == ""
	@triangle1.calculate_angles
	@triangle1.calculate_legs
	@triangle1.calculate_area
	@triangle1.calculate_perimeter
	erb :triangle_results
end
 
get '/circle' do
  	erb :circle
end
post '/circle' do
	@circle1=Circle.new
	@circle1.radius= params[:radius].to_f unless params[:radius] == ""
	@circle1.diameter= params[:diameter].to_f unless params[:diameter] == ""
	@circle1.circumfrence= params[:circumfrence].to_f unless params[:circumfrence] == ""
	@circle1.area= params[:area].to_f unless params[:area] == ""
	@circle1.calculate_area
	@circle1.calculate_circumfrence
	@circle1.diameter
	@circle1.calculate_radius
	erb :circle_results

end	
end