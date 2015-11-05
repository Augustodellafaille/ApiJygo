module V1
	class UsersController < ApplicationController

		def show
			@user = current_user
			render json: @user, serializer, UserSerializer
		end

	end
end