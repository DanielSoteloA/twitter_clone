json.extract! tweet, :id, :UserName, :Description, :created_at, :updated_at
json.url tweet_url(tweet, format: :json)
