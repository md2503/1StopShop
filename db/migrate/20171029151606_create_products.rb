class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :category
      t.float :price
      t.string :brand

      t.timestamps null: false
    end
  end
end
