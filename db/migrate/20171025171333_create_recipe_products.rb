class CreateRecipeProducts < ActiveRecord::Migration
  def change
    create_table :recipe_products do |t|
      t.float :amount
      t.string :measurement

      t.timestamps null: false
    end
  end
end
