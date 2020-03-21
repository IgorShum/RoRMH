class ApplicationController < ActionController::Base
	def hello
		#render :template => "app_controller#hello", :formats => :text
		#render html: 'ApplicationController' 

		render json: ['Random data:', [jsn_par_nm, [jsn_par_nm, jsn_par_nm,jsn_par_nm, jsn_par_nm, jsn_par_nm], [jsn_par_nm, ["#{jsn_par_nm}"], ['two']]]]
	end

	def jsn_par_nm
		alp = ('a'..'z').to_a.shuffle[0..10].join
		dig = (0..9).to_a.shuffle[0..10].join
		res = alp+dig
		res2 = res.split('').to_a.shuffle[0..20].join
		return res2
	end
end
