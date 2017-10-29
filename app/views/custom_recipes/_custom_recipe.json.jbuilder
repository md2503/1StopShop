json.extract! custom_recipe, :id, :user_id, :recipe_id, :created_at, :updated_at
json.url custom_recipe_url(custom_recipe, format: :json)
