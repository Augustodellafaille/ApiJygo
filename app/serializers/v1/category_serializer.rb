module V1
	class CategorySerializer < ActiveModel::Serializer
		attributes :name, :id
		has_many :products, serializer: ProductSerializer

	end
end