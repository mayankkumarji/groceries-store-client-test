class ProductsController < ApplicationController

	# Get api/v1/products
	def index
		render json: {products: [], status: 200}
	end
end