class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :category

  def category
    object.category&.name
  end
end
