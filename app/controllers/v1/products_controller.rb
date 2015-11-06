module V1
	class ProductsController < ApplicationController
		before_action :authenticate_user!

		def index
			@categories = Category.all
			render json: @categories, each_serializer: CategorySerializer, root: nil
		end

	end
end