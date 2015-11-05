module V1
	class ProductSerializer < ActiveModel::Serializer
		attributes :name, :id
	end
end