json.extract! list_product_recipe, :id, :grocery_id, :ingredient_id, :created_at, :updated_at
json.url list_product_recipe_url(list_product_recipe, format: :json)
