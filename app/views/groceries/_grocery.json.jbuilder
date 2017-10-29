json.extract! grocery, :id, :list_id, :product_id, :quantity, :availability, :created_at, :updated_at
json.url grocery_url(grocery, format: :json)
