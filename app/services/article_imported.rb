class ArticleImported
  def fetch
    response = HTTParty.get("https://newsapi.org/v2/top-headlines?sources=google-news&apiKey=0a708bae59cd4f92b26a6bc4c114f1f0")
  
    if response.success?
      json_data = JSON.parse(response.body)

      Article.create(json_data["articles"]) if json_data["articles"].present?
    end
  end
end