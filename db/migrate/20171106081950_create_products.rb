class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :category
      t.float :price
      t.string :brand

      t.timestamps
    end
  end
end
