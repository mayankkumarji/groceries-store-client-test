class Product < ApplicationRecord

	belongs_to :category

	def self.search(params)
		query = ""

		query += "category_id IN (#{params[:categories]})" if params[:categories].present?
		query += " AND " if query.present? && params[:name].present?
		query += "name like '%#{params[:name]}%'" if params[:name].present?

		where(query)
	end
end
