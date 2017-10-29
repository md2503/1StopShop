class CreateGroceries < ActiveRecord::Migration
  def change
    create_table :groceries do |t|
      t.integer :list_id
      t.integer :product_id
      t.float :quantity
      t.boolean :availability

      t.timestamps null: false
    end
  end
end
