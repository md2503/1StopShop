class CreateListProductRecipes < ActiveRecord::Migration
  def change
    create_table :list_product_recipes do |t|
      t.integer :grocery_id
      t.integer :ingredient_id

      t.timestamps null: false
    end
  end
end
