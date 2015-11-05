module V1
	class UserSerializer < ActiveModel::Serializer
		attributes :id, :isshopper, :email, :image

	end
end