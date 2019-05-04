json.extract! portfolio, :id, :title, :subtitle, :body, :thumb_image, :video, :source_code, :created_at, :updated_at
json.url portfolio_url(portfolio, format: :json)
