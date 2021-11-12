module Api
  module V1
    class ProductsController < ApplicationController
      # GET /api/v1/products
      # To search product two parameters will be use.
      # 1. `categories` must be comma seperated ids
      # 2. `name` product name
      def index
        products = Product.search(params)
        render json: { data: ActiveModelSerializers::SerializableResource.new(products, each_serializer: ProductSerializer) }
      end
    end
  end
end
