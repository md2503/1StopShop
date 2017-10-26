class CreateRecipeProductLists < ActiveRecord::Migration
  def change
    create_table :recipe_product_lists do |t|

      t.timestamps null: false
    end
  end
end
