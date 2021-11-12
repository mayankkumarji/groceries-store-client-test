class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :category, :sku

  def category
    object.category&.name
  end
end
