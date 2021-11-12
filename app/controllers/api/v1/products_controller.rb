module Api
  module V1
    class ProductsController < ApplicationController
      # GET /api/v1/products
      # To search product three parameters will be use.
      # 1. `categories` must be comma seperated ids
      # 2. `name` product name
      # 3. `sku` product sku
      def index
        params[:page] = 1 unless params[:page].present?
        products = Product.search(params)
        render json: {
          data: ActiveModelSerializers::SerializableResource.new(products, each_serializer: ProductSerializer),
          total_pages: products.total_pages
        }
      end
    end
  end
end
