class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.integer :recipe_id
      t.integer :product_id
      t.float :amount
      t.string :measurement

      t.timestamps null: false
    end
  end
end
