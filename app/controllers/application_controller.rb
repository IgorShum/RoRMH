class ApplicationController < ActionController::Base
	def hello
		#render :template => "app_controller#hello", :formats => :text
		render html: 'ApplicationController' 
		render html: 'hello'
	end
end
