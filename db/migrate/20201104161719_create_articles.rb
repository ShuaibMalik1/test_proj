class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
    	t.text   :source     , limit: 4294967295
    	t.string :author
    	t.string :title
    	t.text   :description, limit: 4294967295
    	t.string :url
    	t.text   :urlToImage , limit: 4294967295
    	t.text   :content    , limit: 4294967295
    	t.datetime :publishedAt

      t.timestamps
    end
  end
end
