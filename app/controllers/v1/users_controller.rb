module V1
	class UsersController < ApplicationController
		#before_action :authenticate_user!

		def show
			@user = current_user
			render json: @user, serializer: UserSerializer
		end

		def getShoppers
			@shoppers = User.where(isshopper: true)
			render json: @shoppers, each_serializer: ShoppersSerializer
		end

	end
end