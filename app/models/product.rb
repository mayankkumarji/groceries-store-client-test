class Product < ApplicationRecord
  belongs_to :category

  def self.search(params)
    query = ""

    query += "category_id IN (#{params[:categories]})" if params[:categories].present?
    query += " AND " if query.present? && params[:name].present?
    query += "name like '%#{params[:name]}%'" if params[:name].present?
    query += " AND " if query.present? && params[:sku].present?
    query += "sku like '%#{params[:sku]}%'" if params[:sku].present?

    where(query).paginate(page: params[:page])
  end
end
