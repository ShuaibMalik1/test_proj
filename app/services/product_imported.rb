class ProductImported

	def initialize(doc_id)
		@document = Document.find_by_id doc_id
	end

  def import
    if !@document.nil? && @document.file.attached?
    	byebug
      csv = Roo::CSV.new("#{Rails.root}#{@document.file.path}")
    	header = csv.row(1)

    	(2..csv.last_row).each do |i|
    		record = Hash[[header, csv.row(i)].transpose]

    		product = Product.find_by_material_code record["material_code"]

    		if product.nil?
    			Product.create({
            name: record["name"],
            material_code: record["material_code"],
            category_code: record["product_category_code"],
            status: (record["status"] == "TRUE" ? true : false)
          })
    		else
          product.update({
            name: record["name"].present? ? record["name"] : product.name,
            category_code: record["product_category_code"].present? ? record["product_category_code"] : product.category_code,
            status: (record["status"] == "TRUE" ? true : false)
          })
    		end
    	end
    end
  end
end