class CreateListProductProductRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :list_product_product_recipes do |t|
      t.integer :list_product_id
      t.integer :product_recipe_id

      t.timestamps
    end
  end
end
