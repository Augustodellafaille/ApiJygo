module V1
	class ProductsController < ApplicationController

		def index
			@categories = Category.all
			render json: @categories, each_serializer: CategorySerializer, root: nil
		end

	end
end