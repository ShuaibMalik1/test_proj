class ProductSerializer < ActiveModel::Serializer
  attributes :name, :material_code, :product_category_code, :status

  def product_category_code
  	self.object.category_code
  end
end
