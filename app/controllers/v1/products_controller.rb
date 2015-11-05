module V1
	class ProductsController < ApplicationController

		def index
			@categories = Category.all
			render json: @categories, each_serializer: CategorySerializer
		end

	end
end