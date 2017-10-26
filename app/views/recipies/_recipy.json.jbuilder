json.extract! recipy, :id, :name, :category, :serves, :created_at, :updated_at
json.url recipy_url(recipy, format: :json)
