class Product < ApplicationRecord

	validates_presence_of :name, :category_code
	validates :material_code, uniqueness: true
	scope :active, -> { where(status: true) }

end
