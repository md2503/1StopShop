json.extract! recipe_product, :id, :amount, :measurement, :created_at, :updated_at
json.url recipe_product_url(recipe_product, format: :json)
