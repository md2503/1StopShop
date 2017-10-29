json.extract! ingredient, :id, :recipe_id, :product_id, :amount, :measurement, :created_at, :updated_at
json.url ingredient_url(ingredient, format: :json)
