class ArticleSerializer < ActiveModel::Serializer
  attributes :source, :author, :title, :description, :url, :urlToImage, :content, :publishedAt
end

