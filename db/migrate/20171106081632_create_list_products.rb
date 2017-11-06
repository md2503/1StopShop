class CreateListProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :list_products do |t|
      t.integer :list_id
      t.integer :product_id
      t.float :quantity
      t.boolean :availability

      t.timestamps
    end
  end
end
