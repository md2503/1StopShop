class CreateProductRecipes < ActiveRecord::Migration[4.2]
  def change
    create_table :product_recipes do |t|
      t.integer :product_id
      t.integer :recipe_id
      t.float :amount
      t.string :measurement

      t.timestamps
    end
  end
end
