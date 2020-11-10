class Document < ApplicationRecord
	has_one_attached :file

	validate :correct_file_mime_type

	after_commit :import_product_from_doc, on: :create

	private
	def correct_file_mime_type
		if file.attached? && !file.content_type.in?(%w(text/csv))
      file.purge # delete the uploaded file
      errors.add(:file, 'Must be a csv')
    end
	end

	def import_product_from_doc
		ProductImported.new(self.id).import
	end
end
