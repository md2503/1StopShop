json.extract! recipe, :id, :name, :dietaryreqs, :serving, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
