class CreateUserRecipes < ActiveRecord::Migration
  def change
    create_table :user_recipes do |t|

      t.timestamps null: false
    end
  end
end
