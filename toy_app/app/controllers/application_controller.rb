class ApplicationController < ActionController::Base
	def hello
		render html:"Welcome here.."
	end	
end