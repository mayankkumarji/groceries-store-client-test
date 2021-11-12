module Api
  module V1
    class ProductsController < ApplicationController
      # GET /api/v1/products
      def index
        products = Product.search(params)
        render json: { data: ActiveModelSerializers::SerializableResource.new(products, each_serializer: ProductSerializer) }
      end
    end
  end
end
