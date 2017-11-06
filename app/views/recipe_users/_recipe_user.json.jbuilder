json.extract! recipe_user, :id, :recipe_id, :user_id, :created_at, :updated_at
json.url recipe_user_url(recipe_user, format: :json)
