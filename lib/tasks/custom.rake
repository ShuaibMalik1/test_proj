namespace :custom do
	task :import_articles => :environment do
		puts "<<<<<==================== Starting article importing ==========>>>>>>>>>>>>>>>>>>"
		ArticleImported.fetch
		puts "<<<<<==================== Article Imported successfully ==========>>>>>>>>>>>>>>>>>>"
	end
end