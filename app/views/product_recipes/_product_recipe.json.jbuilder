json.extract! product_recipe, :id, :product_id, :recipe_id, :amount, :measurement, :created_at, :updated_at
json.url product_recipe_url(product_recipe, format: :json)
