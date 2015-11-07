module V1
	class OrdersController < ApplicationController
		def create
			puts params[:stuff]
		end
	end
end