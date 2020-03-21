class ApplicationController < ActionController::Base
	def hello
		#render :template => "app_controller#hello", :formats => :text
		#render html: 'ApplicationController' 
		render json: [123, [909, 'asd', 'bcd', 'ruby', 'rails'], ['count', ['one'], ['two']]]
	end
end
