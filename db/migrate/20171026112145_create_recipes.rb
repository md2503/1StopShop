class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :dietary_requirements
      t.integer :serving

      t.timestamps null: false
    end
  end
end
