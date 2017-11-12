class CreateRecipeUsers < ActiveRecord::Migration[4.2]
  def change
    create_table :recipe_users do |t|
      t.integer :recipe_id
      t.integer :user_id

      t.timestamps
    end
  end
end
