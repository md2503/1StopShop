class CreateRecipies < ActiveRecord::Migration
  def change
    create_table :recipies do |t|
      t.string :name
      t.string :category
      t.integer :serves

      t.timestamps null: false
    end
  end
end
